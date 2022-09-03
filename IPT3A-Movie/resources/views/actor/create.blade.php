<div class="container">
<h2>Create New Actor</h2>
<form method="#" action="#" id="actorForm">
<input type="hidden" name="_token" value="{{ csrf_token() }}">

<div class="form-group">
<label for="name" class="control-label">name</label>
<input type="text" class="form-control" id="name" name="name" >
@if($errors->has('name'))
<small>{{ $errors->first('name') }}</small>
@endif
</div>

<div class="form-group">
<label for="note" class="control-label">note</label>
<input type="text" class="form-control" id="note" name="note" >
@if($errors->has('note'))
<small>{{ $errors->first('note') }}</small>
@endif
</div>


<button type="submit" class="btn btn-primary" id="actorFormbtn">Save</button>
<a href="{{ url('/') }}" class="btn btn-default" role="button">Cancel</a>
</div>
</div>
</form>

{{-- I call jquery form validation here because this script will only load
after I call this file on main index using .load() function. The purpose 
of this is to maintain the single page concept while ensuring that the
elements from this file will load first before the script in my validation. --}}
<script src="{{asset('js/FormValidation.js')}}"></script>