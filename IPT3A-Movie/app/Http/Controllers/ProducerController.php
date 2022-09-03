<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use App\Models\Producer;

class ProducerController extends Controller
{
    public function index()
    {
       return View::make('producer.index');
    }


    public function GetAll(Request $request){
        if ($request->ajax()){
            $producers = Producer::orderBy('created_at','DESC')->get();
            return response()->json($producers);
         }
    }


    public function create()
    {
       return View::make('producer.create');
    }

    public function store(Request $request)
    {
        $producer = Producer::create($request->all());
        // return response()->json($producer);
        //return Redirect::to('/')->with('success','Producer Created!');
    } 

    public function edit($id)
    {
        $producer = Producer::find($id);
        return response()->json($producer);
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {
        $producer = Producer::find($id);
        $producer = $producer->update($request->all());
         return response()->json($producer);
        }
    }



    public function destroy($id)
    {
        $producer = Producer::findOrFail($id);
        $producer->delete();
        // return Redirect::to('/customer')->with('success','Customer deleted!');
        return response()->json(["success" => "Producer deleted.",
             "data" => $producer,"status" => 200]);
    }

}
