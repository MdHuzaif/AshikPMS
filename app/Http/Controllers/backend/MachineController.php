<?php

namespace App\Http\Controllers\backend;

use App\Models\Machine;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Session;
//use App\Http\Requests;


class MachineController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $m='Machinary-1';
        $m2='Machinary-2';
        $r='running';
        $d ='damaged';
        $machine = Machine::all();
        
         $runshop1 = Machine::where('shopName','=', $m ) 
                    ->where('status','=', $r )
                   ->get();

          $r1 =count($runshop1); 

          $damshop1 = Machine::where('shopName','=', $m ) 
                    ->where('status','=', $d )
                   ->get();

          $d1 =count($damshop1); 

           $runshop2 = Machine::where('shopName','=', $m2 ) 
                    ->where('status','=', $r )
                   ->get();

          $r2 =count($runshop2);

           $damshop2 = Machine::where('shopName','=', $m2 ) 
                    ->where('status','=', $d )
                   ->get();

          $d2 =count($damshop2);

            $t1=$r1 + $d1;
            $t2=$r2 + $d2;

        return view('backend.machine.list', compact('machine','r1','d1','r2','d2','t1','t2'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

         return view('backend.machine.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //

        $this->validate($request, [
            'shopName' => 'required',
            'machineName' => 'required',
        
        ]);
        $message = Machine::create([
            'shopName' => $request->shopName,
            'machineName' => $request->machineName,
            'status' => $request->status,
            'issueDate' => $request->issueDate,
            'description' => $request->description,
            'created_at' => date('Y-m-d H:i:s'),
        ]);
        if ($message) {
            return redirect()->route('machine.list')->with('success_message', 'successfully created ');
        } else {
            return redirect()->route('machine.create')->with('error_message', 'Failed To create');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $machine = Machine::find($id);
    
        return view('backend.machine.edit', compact('machine'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
           'shopName' => 'required',
            'machineName' => 'required',
            'status' => 'required',
        ]);
        $m = Machine::find($id);
        $m->shopName = $request->shopName;
        $m->machineName = $request->machineName;
        $m->status = $request->status;
        $m->issueDate =$request->issueDate;
        $m->description =$request->description;
        $m->updated_at = date('Y-m-d H:i:s');
        $message = $m->update();
        if ($message) {
            return redirect()->route('machine.list')->with('success_message', 'successfully updated');
        } else {
            return redirect()->route('machine.update')->with('error_message', 'failed to  update');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //

        $machine = Machine::find($id);
            $message = $machine->delete();
            if ($message) {
                return redirect()->route('machine.list')->with('success_message', 'successfully Deleted');
            } else {
                return redirect()->route('machine.update')->with('error_message', 'failed to  Delete');
            }
    }
}
