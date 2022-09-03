<div class="container">
<h2>Create New Role</h2>
<form method="#t" action="#" id="roleForm">
<input type="hidden" name="_token" value="{{ csrf_token() }}">

<div class="form-group">
<label for="role" class="control-label">role</label>
<input type="text" class="form-control" id="role" name="role" >
@if($errors->has('role'))
<small>{{ $errors->first('role') }}</small>
@endif
</div>


<button type="submit" class="btn btn-primary" id="roleFormbtn">Save</button>
<a href="{{ url('/') }}" class="btn btn-default" role="button">Cancel</a>
</div>
</div>
</form>

{{-- I call jquery form validation here because this script will only load
after I call this file on main index using .load() function. The purpose 
of this is to maintain the single page concept while ensuring that the
elements from this file will load first before the script in my validation. --}}
<script src="{{asset('js/FormValidation.js')}}"></script>