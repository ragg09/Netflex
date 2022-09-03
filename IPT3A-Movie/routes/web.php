<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api;
use App\Models\Actor;
use App\Models\Film;
use App\Models\Role;
use App\Models\Genre;
use App\Models\Producer;
use App\Models\Rating;
use App\Models\Favorite;
use Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('index');
// }); 

Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::post('/loginnow', 'Auth\LoginController@login');

// USER ------------ 
Route::get('/signup', function() {
    return view('user.signup');
});

Route::get('/signin', function() {
    return view('user.signin');
});




// Route::get('/logout',[
//     'uses' => 'AuthController@logout',
//     'as' => 'user.logout'
// ]);

// USER ------------

// FILM ------------
Route::get('/', 'FilmController@index')->name('index');

Route::get('/film/action',[
    'uses' => 'FilmController@action',
    'as' => 'film.action'
]);

// Route::get('/film/all',[
//     'uses' => 'FilmController@getAll',
//     'as' => 'film.getall'
// ]);

Route::get('/film/search',[
    'uses' => 'FilmController@search',
    'as' => 'film.search'
]);


Route::get('/film/create',[
    'uses' => 'FilmController@create',

]);

Route::get('/film/showinfo',[
    'uses' => 'FilmController@showinfo',

]);

Route::post('/film/store',[
    'uses' => 'FilmController@store',
    'as' => 'film.store'
]);

// Route::post('/film/favorite',[
//     'uses' => 'FilmController@addFavorite',
//     'as' => 'film.favorite'
// ]);

Route::resource('filmrest', 'FilmController');

// FILM ------------


// ACTOR ------------
Route::get('/actor', function() {
    return view('actor.index');
});

Route::get('/actor/all',[
    'uses' => 'ActorController@getAll',
    'as' => 'actor.getall'
]);

Route::get('/actor/create',[
    'uses' => 'ActorController@create',
    'as' => 'actor.create'
]);

Route::post('/actor/store',[
    'uses' => 'ActorController@store',
    'as' => 'actor.store'
]);

Route::resource('actorrest', 'ActorController');
// ACTOR ------------

// ROLE ------------
Route::get('/role', function() {
    return view('role.index');
});

Route::get('/role/all',[
    'uses' => 'roleController@getAll',
    'as' => 'role.getall'
]);

Route::get('/role/create',[
    'uses' => 'roleController@create',
    'as' => 'role.create'
]);

Route::post('/role/store',[
    'uses' => 'roleController@store',
    'as' => 'role.store'
]);

Route::resource('rolerest', 'roleController');
// ROLE ------------

// GENRE ------------
Route::get('genre', function() {
    return view('genre.index');
});

Route::get('/genre/all',[
    'uses' => 'GenreController@getAll',
    'as' => 'genre.getall'
]);

Route::get('/genre/create',[
    'uses' => 'GenreController@create',
    'as' => 'genre.create'
]);

Route::post('/genre/store',[
    'uses' => 'GenreController@store',
    'as' => 'genre.store'
]);

Route::resource('genrerest', 'GenreController');
// GENRE ------------

// Producer ------------
Route::get('producer', function() {
    return view('producer.index');
});

Route::get('/producer/all',[
    'uses' => 'ProducerController@getAll',
    'as' => 'producer.getall'
]);

Route::get('producer/create',[
    'uses' => 'ProducerController@create',
    'as' => 'producer.create'
]);

Route::post('/producer/store',[
    'uses' => 'ProducerController@store',
    'as' => 'producer.store'
]);

Route::resource('producerrest', 'ProducerController');
// Producer ------------

Route::post('/rate/store',[
    'uses' => 'RateController@store',
    'as' => 'rate.store'
]);

Route::get('/favorite/all',[
    'uses' => 'FavoriteController@getAll',
    'as' => 'favorite.getall'
]);

Route::post('/favorite/store',[
    'uses' => 'FavoriteController@store',
    'as' => 'favorite.store'
]);

Route::resource('favoriterest', 'FavoriteController');
