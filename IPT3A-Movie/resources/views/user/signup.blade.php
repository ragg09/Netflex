
<div class="signup_form">

	<form class="" action="{{-- {{ url('/api/register') }} --}}" method="{{-- post --}}" id="formsignun">
	{{ csrf_field() }}

	<div class="form-group">
	<label for="name">Name: </label>
	 <input type="text" name="name" id="name" class="form-control">
	 @if($errors->has('name'))
				<small>{{ $errors->first('note') }}</small>
			@endif
	</div>

	<div class="form-group">
	<label for="email">Email: </label>
	<input type="text" name="email" id="email" class="form-control">
	</div>

	<div class="form-group">
	<label for="password">Password: </label>
	<input type="password" name="password" id="password" class="form-control">
	</div>

	<div class="form-group">
	<label for="password">Confirm Password: </label>
	<input type="password" name="password_confirmation" id="password_confirmation" class="form-control">
	</div>

	<input type="submit" value="Sign Up" class="btn btn-primary" id="signupFormbtn">
	</form>
</div>

<script src="{{asset('js/user_afterload.js')}}"></script>