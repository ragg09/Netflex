<div class="signup_form">
    <form class="" action="{{-- {{ url('/loginnow') }} --}}" method="{{-- POST --}}" id="login-form">
        {{ csrf_field() }}
        <div class="form-group">
            <label for="email">Email: </label>
            <input type="text" name="email" id="email" class="form-control">
        </div>
        <div class="form-group">
            <label for="password">Password: </label>
            <input type="password" name="password" id="password" class="form-control">
        </div>
        
        <input type="submit" value="Sign In" class="btn btn-primary" id="signinFormbtn">
    </form>
</div>

<script src="{{asset('js/user_afterload.js')}}"></script>