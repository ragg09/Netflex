<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use App\Models\Film;
use App\Models\Producer;
use App\Models\Genre;
use App\Models\Actor;
use App\Models\Role;
use App\Models\Rating;
use Illuminate\Support\Facades\DB;
// use NicolasLopezj\Searchable\SearchableTrait;

class FilmController extends Controller
{
    public function index()
    {
        return view('index');
    }

    // public function GetAll(Request $request){
    //     if ($request->ajax()){
    //         $films = Film::orderBy('created_at','DESC')->get();
    //         return response()->json($films);
    //      }
    // }

    // public function action(Request $request){

    //     if($request->ajax()){
    //         $data = Film::search($request->get('film_search_query'))->get();
    //         return response()->json($data);
    //     }
    // }

    public function action(Request $request){
         if($request->ajax())
         {
          $output = '';
          $query = $request->get('query');
          if($query != '')
          {
           $data = DB::table('films')
             ->where('title', 'like', '%'.$query.'%')
             ->get();
             
          }
          else
          {
           $data = DB::table('films')
             ->orderBy('id', 'desc')
             ->get();
          }
          $total_row = $data->count();
          if($total_row > 0){
            if(!Auth::check() || Auth::user()->name !== "admin"){
                foreach($data as $row){
                    $output .= '
                    <tr>
                     <td>'.$row->title.'</td>
                     <td>'.$row->story.'</td>
                     <td>'.$row->released_at.'</td>
                     <td>'.$row->duration.'</td>
                     <td>'.$row->info.'</td>
                     <td><img src="http://ipt3a-movie.test/image/'.$row->image.'" height="160" width="300"></td>
                     <td><a href="#"  class="filmshowbtn" data-id="'.$row->id.'"><i  class="fa fa-list-ol" style="font-size:24px; color:green" ></a></td>
                     <td><form method="post" action="http://ipt3a-movie.test/favorite/store" id="formfavorite'.$row->id.'"><input  type="hidden" name="_token" value="'.csrf_token().'"><input type="text" hidden name="user_id" value="'.Auth::user()->id.'" /><input hidden type="text" name="title" value="'.$row->title.'" /><input hidden type="text" name="image" value="'.$row->image.'" /><button type="submit" data-id="'.$row->id.'" class="btn btn-primary" id="favbtn'.$row->id.'"><i  class="fa fa-ticket" style="font-size:24px; color:black" data-id="'.$row->id.'"></button></form></td>
                    </tr>
                    ';
                }
            }else{
                foreach($data as $row){
                    $output .= '
                    <tr>
                     <td>'.$row->title.'</td>
                     <td>'.$row->story.'</td>
                     <td>'.$row->released_at.'</td>
                     <td>'.$row->duration.'</td>
                     <td>'.$row->info.'</td>
                     <td><img src="http://ipt3a-movie.test/image/'.$row->image.'" height="160" width="300"></td>
                     <td><a href="#" data-toggle="modal" data-target="#filmeditModal" id="filmeditbtn" data-id="'.$row->id.'"><i class="fa fa-pencil-square-o" aria-hidden="true" style="font-size:24px" ></a></td>
                     <td><a href="#"  class="filmdeletebtn" data-id="'.$row->id.'"><i  class="fa fa-trash-o" style="font-size:24px; color:red" ></a></td>
                     <td><a href="#"  class="filmshowbtn" data-id="'.$row->id.'"><i  class="fa fa-list-ol" style="font-size:24px; color:green" ></a></td>

                    </tr>
                    ';
                }
            }
           
          }else{
           $output = '
           <tr>
            <td align="center" colspan="5">No Data Found</td>
           </tr>
           ';
          }
          $data = array(
           'table_data'  => $output,
           'total_data'  => $total_row
          );

          echo json_encode($data);
         }
    }

    //getting titles in film table
    //that will be used for searchlist array
    public function search(Request $request)
    {

        if ($request->ajax()){
            $films = DB::select('SELECT title FROM films');
            return response()->json($films);
         }
    }

    public function create()
    {
        $actors = DB::select('SELECT * FROM actors');
        $roles = DB::select('SELECT * FROM roles');
        $genres = DB::select('SELECT * FROM genres');
        $producers = DB::select('SELECT * FROM producers');
        return View::make('film.create',['actors'=>$actors,'roles'=>$roles,'genres'=>$genres,'producers'=>$producers]);
    }

    public function store(Request $request)
    {
  		//PS I've changed the dateformat of my films->'released_at' manually in phpmyadmin
		// Steps:
		// Go to the "Structure" page of the table in phpmyadmin.
		// Click on the "Change" hyperlink in the Actions column.
		// Chose "Text/Plain: Dateformat" from the Browser Transformation dropdown.
		// Insert " 0,'%d-%b-%Y','local' " (w/o the double quote) into the transformation options column.
    	//this validation is for checking purposes, I have separate jquery validation.
        $rules = [
            'title' =>'required',
            'story'=>'required|min:6|max:100000',
            'released_at' =>'required',
            'duration' =>'required|numeric',
            'info'=>'required',
            'poster'=>'required',
        ];
        $messages = [
            'required' => 'This :attribute field is required',
            'min' => 'masyadong maliit ang :attribute',
            'alpha' => 'pawang mga letra lamang',
        ];

        $formData = $request->all();
        $validator = Validator::make($formData, $rules, $messages);
        if ($validator->passes()){
            $poster=$request->file('poster');
            $file_name=$request->input('title').'.'.$poster->getClientOriginalExtension();
            $poster->move(public_path("image"),$file_name);

            $film=new Film;
            $film->title=$request->input('title');
            $film->story=$request->input('story');
            $film->released_at=$request->input('released_at');
            $film->duration=$request->input('duration');
            $film->info=$request->input('info');
            $film->image=$file_name;
            $film->save();

            DB::table('film_actor_role') -> insert([
                'role_id' => $request -> input('role'),
                'film_id' => $film -> id,
                'actor_id' => $request -> input('actor'),
            ]);

            DB::table('film_genre') -> insert([
                'genre_id' => $request -> input('genre'),
                'film_id' => $film -> id,
            ]);

            DB::table('film_producer') -> insert([
                'producer_id' => $request -> input('producer'),
                'film_id' => $film -> id,
            ]);
            //return Redirect::to('/')->with('success','NEW FILM ADDED'); 
        }
        return redirect()->back()->withInput()->withErrors($validator);
    }

     public function edit($id)
    {
        $film = DB::table('films')
             ->where('id', 'like', '%'.$id.'%')
             ->get();
        return response()->json($film);
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {
            $film = Film::find($id);
            $film = $film->update($request->all());
         return response()->json($film);
        }
    }

    public function show($id)
    {
        $film = DB::table('films')
             ->where('id', 'like', '%'.$id.'%')
             ->get();

        $rate = DB::select('SELECT * FROM ratings WHERE film_id ='.$id);
        return response()->json(['film' => $film, 'rate' => $rate]);
    }

    public function showinfo()
    {
        return view('film.filminfo');
    }



    public function destroy($id)
    {
        $film = Film::findOrFail($id);
        $film->delete();
        // return Redirect::to('/customer')->with('success','Customer deleted!');
        return response()->json(["success" => "Film deleted.",
             "data" => $film,"status" => 200]);
    }






}
