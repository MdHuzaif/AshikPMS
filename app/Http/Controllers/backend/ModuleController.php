<?php

namespace App\Http\Controllers\backend;

use App\Models\Role;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Module;
use App\Models\RoleModule;
use Illuminate\Support\Facades\DB;
class ModuleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $this->checkpermission('module-list');
        $module = Module::orderBy('name', 'asc')->paginate(10);
        return view('backend.module.list', compact('module'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->checkpermission('module-create');
        $role = Role::all();
        return view('backend.module.create', compact('role'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'module_key' => 'required|unique:modules',
            'module_url' => 'required',
            'module_rank' => 'required',
        ]);
        $module = Module::create([
            'name' => $request->name,
            'module_key' => $request->module_key,
            'module_url' => $request->module_url,
            'view_sidebar' => $request->view_sidebar,
            'module_icon' => $request->module_icon,
            'module_rank' => $request->module_rank,
            'created_at' => date('Y-m-d H:i:s'),
        ]);
        if ($module) {
            foreach ($request->roles as $role) {
                $rolemodule = new RoleModule();
                $rolemodule->module_id = $module->id;
                $rolemodule->role_id = $role;
                $rolemodule->save();
            }
            return redirect()->route('module.list')->with('success_message', 'You are successfully created');
        } else {
            return redirect()->route('module.create')->with('error_message', 'You con not create rignt now');
        }
    }
    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $module = Module::find($id);
        // $role = Role::all();
        $role = DB::select('select * from roles where id <>1 and id <>3', [1]);
        return view('backend.module.edit',compact('module','role'));
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

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    
    
    public function asign($id)
    {
        $this->checkpermission('permission-asign');

        $roledetails = Role::find($id);
        $permission_module = DB::select('select * from modules where id <>10 ', [1]);
        
        $currentpermission = $roledetails->permission_module;
        return view('backend.permission.asign', compact('roledetails', 'permission_module', 'currentpermission'));
    }

    public function permissionasign(Request $request, $id)
    {
        $data['role_id'] = $id;
        $role = Role::find($id);
        $rp = DB::select('select * from role_modules where role_id = '.$id)->get();
        // $rp = Mpdule::where('role_id', '=', $id)->get();
        foreach ($rp as $r) {
            $r->delete();
        }
        if (isset($request->asignpermission)) {
            foreach ($request->asignpermission as $p) {
                $data['module_id'] = $p;
                RoleModule::create($data);
            }
        } else {
            return redirect()->route('role.list')->with('success_message', 'Your Operation is successfull');
        }

        return redirect()->route('role.list')->with('success_message', 'Your Operation is successfull');
    }
}
