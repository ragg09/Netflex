<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Genre extends Model
{
    use HasFactory;

    protected $fillable = [
        'genre',
    ];

    public function films() {
    	return $this->belongsToMany('App\Film','film_genre');
    }

}
