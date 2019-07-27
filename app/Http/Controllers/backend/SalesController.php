<?php

namespace App\Http\Controllers\backend;

use App\Models\Product;
use App\Models\Sale;
use App\Models\Salescart;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Session;
use PDF;


class SalesController extends Controller
{
    public function create()
    {
        $this->checkpermission('sales-create');
        $salescart = Salescart::all();
        return view('backend.sales.create', compact('sales', 'salescart'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'product_id' => 'required',
            'price' => 'required',
            'sales_quantity' => 'required',
        ]);
        if ($request->ajax()) {
             $d =$request->discount;
            $sales = new Salescart();
            $sales->product_id = $request->product_id;
            $sales->quantity = $request->sales_quantity;
            $p = $request->price * $request->sales_quantity;
            $w =($p *$d)/100 ; 
            $sales->price =$p - $w;
            $sales->sales_status = $request->sales_status;
            $sales->saller_name = Auth::user()->name;
            $sales->sales_date = date('Y-m-d');
            if ($sales->save()) {
                $product = Product::find($request->product_id) ;
                $product->stock = $product->stock - $request->sales_quantity;
                if ($product->update()) {
                    return response(['success_message' => 'SuccessFully Make sales']);
                }
            }

        } else {
            return response(['error_message' => 'Filed To Make sales']);
        }
    }

    public function index()
    {
        $this->checkpermission('sales-list');
        $sales = Sale::join('products', 'products.id', '=', 'sales.product_id')
            ->select('sales.*', 'products.name')
            ->where('sales.sales_status','<>', 2)
            ->orderBy('sales.created_at', 'DEC')
            ->get();

         $cashsales = Sale::join('products', 'products.id', '=', 'sales.product_id')
            ->select('sales.*', 'products.name')
            ->where('sales.sales_status','=', 1)
            ->orderBy('sales.created_at', 'DEC')
            ->get();
        // $remsales = Sale::join('products', 'products.id', '=', 'sales.product_id')
        //     ->select('sales.*', 'products.name')
        //     ->where('sales.sales_due','<>', 0)
        //     ->orderBy('sales.created_at', 'DEC')
        $remsales = Sale::join('products', 'products.id', '=', 'sales.product_id')
            ->select('sales.*', 'products.name')
            ->where('sales.sales_status','<>', 1)
            ->orderBy('sales.created_at', 'DEC')
            
            ->get();
           // $remsales = DB::select('select id from sales where sales_status ==1', [1]);
        return view('backend.sales.list', compact('sales','remsales','cashsales'));
    }


    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $check = $this->checkpermission('sales-update');
        if ($check) {
            $this->checkpermission('sales-update');
        } else {
            $purchase = Sale::find($id);
            $purchase->sales_status = 1;
           
            $purchase->update();
            return redirect()->back()->with('success_message', 'successfully add Remining Balance');
        }
    }



    public function ajaxlist()
    {
        $sales = Salescart::join('products', 'products.id', '=', 'salescarts.product_id')
            ->select('salescarts.*', 'products.name')
            ->orderBy('salescarts.created_at', 'DEC')
            ->get();
        return view('backend.sales.ajaxlist', compact('sales'));
    }

    public function ajaxform()
    {
        $salescart = Salescart::all();
        return view('backend.sales.ajaxform', compact('salescart'));
    }

    public function refreshproduct()
    {
        $product = Product::where('stock', '>=', 1)->get();
        return view('backend.sales.refreshproduct', compact('product'));
    }

    public function getquantity(Request $request)
    {
        $product = Product::where('id', $request->product_id)->get();
        echo $product[0]->stock;

    }

    public function getprice(Request $request)
    {
        $product = Product::where('id', $request->product_id)->get();
        echo $product[0]->price;
    }

    public function getproductname(Request $request)
    {
        $product = Product::where('id', $request->product_id)->get();
        echo $product[0]->name;
    }

    public function getallpdf()
    {
        $report = Salescart::join('products', 'products.id', '=', 'salescarts.product_id')
            ->select('salescarts.*', 'products.*')
            ->get();
        return view('backend.pdfbill.salesbill', compact('report'));
    }

    public function getcustomreport(Request $request)
    {
        $start = $request->start;
        $end = $request->end;
        $report = Sale::join('products', 'products.id', 'sales.product_id')
            ->select('sales.*', 'products.name')
            ->whereBetween('sales.sales_date', [$start, $end])
            ->get();
        $pdf = PDF::loadview('backend.pdfbill.allreport', compact('report', 'start', 'end'));
        return $pdf->download('salesreport.pdf');
    }

    public function savetosales(Request $request)
    {
        for ($i = 0; $i < $request->input('total_product'); $i++) {
            $od = [

                'product_id' => $request['product_id'][$i],
                'quantity' => $request['quantity'][$i],
                'price' => $request['price'][$i],
                'sales_status' => $request['sales_status'][$i],
                'saller_name' => Auth::user()->name,
                'sales_date' => date('Y-m-d'),
            ];
            Sale::create($od);
        }
        DB::table('salescarts')->delete();
        return redirect()->back()->with('success_message', 'Successfuly Clear Your Bucket and Sales Item store in Sales Record');

    }

    public function deletecart($id, $pid)
    {
        $product = Product::find($pid);
        $salescart = Salescart::find($id);
        $product->stock = $product->stock + $salescart->quantity;
        if ($product->update()) {
            $salescart->delete();
            return redirect()->back()->with('success_message', 'Seccessfully deleted Item');
        }else {
            return redirect()->back()->with('error_messsage', 'Failed To Delete Item');
        }
    }
}
