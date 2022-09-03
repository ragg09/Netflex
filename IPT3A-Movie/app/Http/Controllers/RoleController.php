<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use App\Models\Role;

class RoleController extends Controller
{
    public function index()
    {
       return View::make('role.index');
    }


    public function GetAll(Request $request){
        if ($request->ajax()){
            $role = Role::orderBy('created_at','DESC')->get();
            return response()->json($role);
         }
    }


    public function create()
    {
       return View::make('role.create');
    }

    public function store(Request $request)
    {
        $role = Role::create($request->all());
        //return Redirect::to('/')->with('success','Role Created!');
    } 

    public function edit($id)
    {
        $role = Role::find($id);
        return response()->json($role);
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {
        $role = Role::find($id);
        $role = $role->update($request->all());
         return response()->json($role);
        }
    }



    public function destroy($id)
    {
        $role = Role::findOrFail($id);
        $role->delete();
        return response()->json(["success" => "Role deleted.",
             "data" => $role,"status" => 200]);
    }
}
