<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use App\Models\Genre;

class GenreController extends Controller
{
    public function index()
    {
       return View::make('genre.index');
    }


    public function GetAll(Request $request){
        if ($request->ajax()){
            $genres = Genre::orderBy('created_at','DESC')->get();
            return response()->json($genres);
         }
    }


    public function create()
    {
       return View::make('genre.create');
    }

    public function store(Request $request)
    {
        $genre = Genre::create($request->all());
        // return response()->json($genre);
        //return Redirect::to('/')->with('success','Genre Created!');
    } 

    public function edit($id)
    {
        $genre = Genre::find($id);
        return response()->json($genre);
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {
        $genre = Genre::find($id);
        $genre = $genre->update($request->all());
         return response()->json($genre);
        }
    }



    public function destroy($id)
    {
        $genre = Genre::findOrFail($id);
        $genre->delete();
        // return Redirect::to('/customer')->with('success','Customer deleted!');
        return response()->json(["success" => "Genre deleted.",
             "data" => $genre,"status" => 200]);
    }
}
