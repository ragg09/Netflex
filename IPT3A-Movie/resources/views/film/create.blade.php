<div class="container">
<h2>Create New film</h2>
<form method="post" action="{{route('film.store')}}" id="filmForm" enctype="multipart/form-data">
<input type="hidden" name="_token" value="{{ csrf_token() }}">

<div class="form-group">
<label for="title" class="control-label">title</label>
<input type="text" class="form-control" id="title" name="title" >
@if($errors->has('title'))
<small>{{ $errors->first('title') }}</small>
@endif
</div>

<div class="form-group">
<label for="story" class="control-label">story</label>
<input type="text" class="form-control" id="story" name="story" >
@if($errors->has('story'))
<small>{{ $errors->first('story') }}</small>
@endif
</div>

<div class="form-group">
<label for="actor" class="control-label">actor</label>
    <select class="form-control" id="actor" name="actor">
    	<option>
        </option>
        @foreach($actors as $actor)
            <option value="{{ $actor->id }}">
                {{ $actor->name }}
            </option>
        @endforeach

    </select>
@if($errors->has('actor'))
<small>{{ $errors->first('actor') }}</small>
@endif
</div>

<div class="form-group">
<label for="role" class="control-label">role</label>
    <select class="form-control" id="role" name="role">
    	<option>
        </option>
        @foreach($roles as $role)
            <option value="{{ $role->id }}">
                {{ $role->role }}
            </option>
        @endforeach

    </select>
@if($errors->has('role'))
<small>{{ $errors->first('role') }}</small>
@endif
</div>

<div class="form-group">
<label for="genre" class="control-label">genre</label>
    <select class="form-control" id="genre" name="genre">
    	<option>
        </option>
        @foreach($genres as $genre)
            <option value="{{ $genre->id }}">
                {{ $genre->genre }}
            </option>
        @endforeach

    </select>
@if($errors->has('genre'))
<small>{{ $errors->first('genre') }}</small>
@endif
</div>

<div class="form-group">
<label for="producer" class="control-label">producer</label>
    <select class="form-control" id="producer" name="producer">
    	<option>
        </option>
        @foreach($producers as $producer)
            <option value="{{ $producer->id }}">
                {{ $producer->name }}
            </option>
        @endforeach

    </select>
@if($errors->has('producer'))
<small>{{ $errors->first('producer') }}</small>
@endif
</div>

<div class="form-group">
<label for="released_at" class="control-label">released_at</label>
<input type="date" class="form-control" id="released_at" name="released_at" data-date="" data-date-format="DD MMMM YYYY">
@if($errors->has('released_at'))
<small>{{ $errors->first('released_at') }}</small>
@endif
</div>

<div class="form-group">
<label for="duration" class="control-label">duration</label>
<input type="text" class="form-control" id="duration" name="duration" >
@if($errors->has('duration'))
<small>{{ $errors->first('duration') }}</small>
@endif
</div>

<div class="form-group">
<label for="info" class="control-label">info</label>
<input type="text" class="form-control" id="info" name="info" >
@if($errors->has('info'))
<small>{{ $errors->first('info') }}</small>
@endif
</div>

<div class="form-group">
<label for="poster" class="control-label">Insert Picture</label>
<input type="file" class="form-control" id="poster" name="poster" >
@if($errors->has('poster'))
<small>{{ $errors->first('poster') }}</small>
@endif
</div>



<button type="submit" class="btn btn-primary" id="filmFormbtn">Save</button>
<a href="{{ url('/') }}" class="btn btn-default" role="button">Cancel</a>
</div>
</div>
</form>

{{-- I call jquery form validation here because this script will only load
after I call this file on main index using .load() function. The purpose 
of this is to maintain the single page concept while ensuring that the
elements from this file will load first before the script in my validation. --}}
<script src="{{asset('js/FormValidation.js')}}"></script>