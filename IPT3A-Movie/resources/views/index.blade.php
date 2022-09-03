{{-- this is my main index, I load movies in home/index as default.
Content2 hold movies table, while content1 will be loaded by my other files.
The idea is, by defaul, list of movies are shown and if I change page, instead
of going to that uri, Ill just load it inside content1 div and Ill hide
content2, this single page concept is all thanks to jquery. --}}
@extends('layouts.base')
@section('body')


	<div id="content1"> 
	</div>

	

	<div id="content2">
		<center>
				<div id="searchdiv">
		       		<a id="mysearchbtn"><input type="text" name="search" id="mysearch" class="form-control searchbtn" placeholder="Search Movie Title . . ." /></a>
	       		</div>
    	</center>
		<center><h2>Home Page</h2></center>

		<div class="alert" id="success" style="display: none"></div>

		<div  class="table-responsive">
			<h3 align="center">Total Movies : <span id="total_records"></span></h3>
     		<br><br>
			<table id="ctable" class="table table-striped table-hover">
			    <thead>
			      	<tr>
				        <th>Title</th>
				        <th>Story</th>
				        <th>Released</th>
				        <th>Duration</th>
				        <th>Info</th>
				        <th>Image</th>
				        @if (Auth::check())
					        @if (Auth::user()->name === "admin")
					        <th>Edit</th>
					        <th>Delete</th>
					        @endif
				        @endif
				        <th>Rate</th>
				        <th><center>Add Favorite</center></th>
				        
			        </tr>
			    </thead>
			    <tbody id="fetch_data">
			    	
			    </tbody>
			</table>
		</div>
		@include('film.modal')
	</div>

	{{-- Drag & Resize --}}
	<div id="listbox" title="Profile" style="display: none;">
		@if (Auth::check())
			ID: <strong> {{ Auth::user()->id }}</strong>
			<br>
			Name: <strong> {{ Auth::user()->name }}</strong>
			<br>
			Email: <strong> {{ Auth::user()->email }}</strong>

			<div  class="table-responsive">
				<h3 align="center">My Favorites</h3>
	     		<br><br>
				<table id="mytable" class="table table-striped table-hover">
				    <thead>
				      	<tr>
					        <th>Title</th>
					        <th>Image</th>
					        <th>Remove</th>
					        
				        </tr>
				    </thead>
				    <tbody id="fetch_favorite_data">
				    	
				    </tbody>
				</table>
			</div>
		@endif
	</div>
	  
@endsection
