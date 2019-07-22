<?php

namespace App\Http\Controllers\backend;

use App\Models\Machine;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
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
        
        $machine = Machine::all();


        return view('backend.machine.index', compact('machine'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
            'shopname' => 'required',
            'total' => 'required',
            'damage' => 'required',
    
        ]);
        
        $m = Machine::find($id);
        $m->shopname = $request->shopname;
        $m->total= $request->total;
        $m->run =$request->total - $request->damage;
        $m->damage = $request->damage;
        $m->updated_at = date('Y-m-d H:i:s');
        $message = $m->update();
        if ($message) {
            return redirect()->route('backend.machine.index')->with('success_message', 'successfully updated');
        } else {
            return redirect()->route('backend.machine.edit')->with('error_message', 'failed to  update');
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
    }
}
