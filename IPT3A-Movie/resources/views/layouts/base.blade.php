<!DOCTYPE html>
 <html lang="en">
 <head>
 <meta charset="UTF-8">
 <title></title>
 	<link rel="stylesheet" type="text/css" href="{{asset('css/index.css')}}">
 	
 </head>
 <body id="body">
 @include('include.navbar')
 @yield('body')
 @include('include.header')
 </body>
 </html>