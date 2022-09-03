<div class="container">
<h2>Create New Genrer</h2>
<form method="#" action="#" id="genreForm">
<input type="hidden" name="_token" value="{{ csrf_token() }}">

<div class="form-group">
<label for="genre" class="control-label">genre</label>
<input type="text" class="form-control" id="genre" name="genre" >
@if($errors->has('genre'))
<small>{{ $errors->first('genre') }}</small>
@endif
</div>

<button type="submit" class="btn btn-primary" id="genreFormbtn">Save</button>
<a href="{{ url('/') }}" class="btn btn-default" role="button">Cancel</a>
</div>
</div>
</form>

{{-- I call jquery form validation here because this script will only load
after I call this file on main index using .load() function. The purpose 
of this is to maintain the single page concept while ensuring that the
elements from this file will load first before the script in my validation. --}}
<script src="{{asset('js/FormValidation.js')}}"></script>