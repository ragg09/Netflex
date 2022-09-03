<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use App\Models\Favorite;
use Illuminate\Support\Facades\DB;

class FavoriteController extends Controller
{
    public function GetAll(Request $request){
        if ($request->ajax() && Auth::check()){
        	$id = Auth::user()->id;
            $favorite = DB::select('SELECT * FROM favorites WHERE user_id='.$id);
            return response()->json($favorite);
         }
    }

    public function store(Request $request)
    {
        $favorite = Favorite::create($request->all());
        return Redirect::to('/');
    } 

    public function destroy($id)
    {
        $favorite = Favorite::findOrFail($id);
        $favorite->delete();
        return response()->json(["success" => "Favorite deleted.",
             "data" => $favorite,"status" => 200]);
    }

}
