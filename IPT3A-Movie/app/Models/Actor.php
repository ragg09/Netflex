<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Actor extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'note',
    ];

    public function films() {
    	return $this->belongsToMany('App\Film','film_actor_role');
    }

    public function roles() {
    	return $this->belongsToMany('App\Role','film_actor_role');
    }

}
