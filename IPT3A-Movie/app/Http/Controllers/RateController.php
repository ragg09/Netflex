<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use App\Models\Rating;

class RateController extends Controller
{
    public function store(Request $request)
    {
        $rate = Rating::create($request->all());
        //return Redirect::to('/')->with('success','Role Created!');
    } 
}
