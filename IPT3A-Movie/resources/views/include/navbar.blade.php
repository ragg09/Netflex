<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="{{ url('/') }}"><img src="{{asset('images/logo.png')}}" id="navbar_logo" /></a>
    </div>
     <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        {{--
        <li class="dropdown" id="">
                <button type="submit" class="btn btn-info" style="margin-top: 17px; padding-top: 2px;" id="searchbtn">
                  <span class="glyphicon glyphicon-search"></span> Search
                </button>
        </li> --}}
        @if (Auth::check())
          @if (Auth::user()->name === "admin")
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Actor<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a class='actor_view'>View</a></li>
                <li> <a class='actor_create'>Create</a></li>
            </ul>
          </li>

          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Role<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a class='role_view'>View</a></li>
                <li> <a class='role_create'>Create</a></li>
            </ul>
          </li>

          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Genre<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a class='genre_view'>View</a></li>
                <li> <a class='genre_create'>Create</a></li>
            </ul>
          </li>

          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Producer<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a class='producer_view'>View</a></li>
                <li> <a class='producer_create'>Create</a></li>
            </ul>
          </li>

          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Films<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a class='film_view' >View</a></li>
              <li> <a class='film_create'>Create</a></li>
            </ul>
          </li>
          @endif
        @endif

        {{-- <li class="dropdown"  id="listbtn"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Favorites<span class="caret"></span></a> --}}
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user-circle"></i> User<span class="caret"></span></a>
            <ul class="dropdown-menu">
              @if (Auth::check())
                <li id="listbtn"><a>User Profile</a></li>
                <li role="separator" class="divider"></li>
                <li>
                  <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">{{ __('Logout') }}</a>
                  <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                  </form>
                </li>
              @else
                {{-- <li>{{ auth()->user()->email }}</li> --}}
                <li><a class='navItemSignUp'>Signup</a></li>
                <li><a class='navItemSignIn'>Signin</a></li>  
              @endif 
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>