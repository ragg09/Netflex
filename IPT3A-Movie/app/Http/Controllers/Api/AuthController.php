<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Http;

//for event listner + email sender
use Illuminate\Support\Facades\Event;
use App\Events\UserRegistered;


class AuthController extends Controller
{

  public function index(){
    return User::all();
  }

  public function signin(){
    return view('user.signin');
  }



    public function register(Request $request)
   {
        //validate name, unique email, and password confirmation.   
        $MyValidation = $request->validate([
            'name'=>'required|max:55',
            'email'=>'email|required|unique:users',
            'password'=>'required|confirmed'
        ]);

        //to encrypt pass
        $MyValidation['password'] = bcrypt($request->password);

        $user = User::create($MyValidation);

        //instead of calling it inside an event listener 
        //you can directly use email sender here.
        //but we will be using an event listener
        //Mail::to($request->email)->send(new WelcomeMail());
        Event::dispatch(new UserRegistered($request));

        $accessToken = $user->createToken('authToken')->accessToken;

        // return response(['user'=> $user, 'access_token'=> $accessToken]);
        //return Redirect::to('/')->with('success','YOU ARE NOW REGISTEREG!');

       
   }


   // public function login(Request $request)
   // {
   //      $loginData = $request->validate([
   //          'email' => 'email|required',
   //          'password' => 'required'
   //      ]);
       
   //      if(!auth()->attempt($loginData)) {
   //          return response(['message'=>'Invalid credentials']);
   //      }

   //      $accessToken = auth()->user()->createToken('authToken')->accessToken;

   //      $response = Http::withHeaders([
   //        'Accept' => 'application/json',
   //        'Authorization' => 'Bearer '.$accessToken,
   //      ])->get('http://ipt3a-movie.test/api/user');

   //      // return response(['user' => auth()->user(), 'access_token' => $accessToken]);
   //      return $response->json();


   // //      $request->validate([
   // //      'email' => 'required|email|exists:users,email', 
   // //      'password' => 'required'
   // //      ]);

   // //      if( Auth::attempt(['email'=>$request->email, 'password'=>$request->password],) ) {
   // //          $user = Auth::user();

   // //          $token = $user->createToken($user->email.'-'.now());

   // //          return response()->json([
   // //              'user' => $user,
   // //              'token' => $token->accessToken
   // //          ]);
   // //      }
   //  }

    public function login(Request $request)
   {
        $loginData = $request->validate([
            'email' => 'email|required',
            'password' => 'required'
        ]);
       
        if(Auth::attempt($loginData)) {
            return Redirect::to('/')->with('success','LOGIN');
        }

    }











}
