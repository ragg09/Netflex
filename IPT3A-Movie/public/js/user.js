

// function signIn(){
//     $('#content_onload').load('/signin');
// }



$(document).ready(function() {

    $('.navItemSignUp').on('click',function(){
    	$('#content2').hide();
    	$('#content1').load('/signup');
    });

    $('.navItemSignIn').on('click',function(){
    	$('#content2').hide();
    	$('#content1').load('/signin');
    });


});