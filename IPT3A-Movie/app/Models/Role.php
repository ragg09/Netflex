<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;

    protected $fillable = [
        'role',
    ];

    public function films() {
    	return $this->belongsToMany('App\Film','film_actor_role');
    }

    public function actors() {
    	return $this->belongsToMany('App\Role','film_actor_role');
    }
}
