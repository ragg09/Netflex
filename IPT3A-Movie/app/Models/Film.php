<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
// use NicolasLopezj\Searchable\SearchableTrait;

class Film extends Model
{
    use HasFactory;
    //use SearchableTrait;

    protected $fillable = [
        'title',
        'story',
        'released_at',
        'duration',
        'info',
    ];

    // protected $searchable = [
    //     'columns' => [
    //         'films.title'  => 10,
    //         'films.story'   => 10,
    //         'films.released_at'   => 10,
    //         'films.duration'    => 10,
    //         'films.info'  => 10,
    //         'films.image'   => 10,
    //         'films.id'    => 10,
    //     ]
    // ];

    public function genres() {
    	return $this->belongsToMany('App\Genre', 'film_genre');
    }

    public function actors() {
    	return $this->belongsToMany('App\Actor', 'film_actor_role');
    }

    public function roles() {
    	return $this->belongsToMany('App\Role', 'film_actor_role');
    }

    public function producers() {
    	return $this->belongsToMany('App\Producer','film_producer');
    }

    public function users(){
        return $this->belongsToMany('App\User','ratings')->using(Rating::class)->withPivot(['rate','comment', 'created_at']);
    }
}
