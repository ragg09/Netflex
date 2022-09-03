<div class="container">
<h2>Create New producer</h2>
<form method="#" action="#" id="producerForm">
<input type="hidden" name="_token" value="{{ csrf_token() }}">

<div class="form-group">
<label for="name" class="control-label">name</label>
<input type="text" class="form-control" id="name" name="name" >
@if($errors->has('name'))
<small>{{ $errors->first('name') }}</small>
@endif
</div>

<div class="form-group">
<label for="email" class="control-label">email</label>
<input type="text" class="form-control" id="email" name="email" >
@if($errors->has('email'))
<small>{{ $errors->first('email') }}</small>
@endif
</div>


<button type="submit" class="btn btn-primary" id="producerFormbtn">Save</button>
<a href="{{ url('/') }}" class="btn btn-default" role="button">Cancel</a>
</div>
</div>
</form>

{{-- I call jquery form validation here because this script will only load
after I call this file on main index using .load() function. The purpose 
of this is to maintain the single page concept while ensuring that the
elements from this file will load first before the script in my validation. --}}
<script src="{{asset('js/FormValidation.js')}}"></script>