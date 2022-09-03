<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use App\Models\Actor;

class ActorController extends Controller
{

	public function index()
    {
       return View::make('actor.index');
    }


    public function GetAll(Request $request){
        if ($request->ajax()){
            $actors = Actor::orderBy('created_at','DESC')->get();
            return response()->json($actors);
         }
    }


    public function create()
    {
       return View::make('actor.create');
    }

    public function store(Request $request)
    {
        $actor = Actor::create($request->all());
        return response()->json([
            'success' => 'Actor Created',
            'class_name' => 'alert-danger'
        ]);
    } 

    public function edit($id)
    {
        $actor = Actor::find($id);
        return response()->json($actor);
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {
        $actor = Actor::find($id);
        $actor = $actor->update($request->all());
         return response()->json($actor);
        }
    }



    public function destroy($id)
    {
        $actor = Actor::findOrFail($id);
        $actor->delete();
        // return Redirect::to('/customer')->with('success','Customer deleted!');
        return response()->json(["success" => "Actor deleted.",
             "data" => $actor,"status" => 200]);
    }





}
