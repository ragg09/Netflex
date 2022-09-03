$(document).ready(function(){

	$('#signinFormbtn').on('click',function(){
		//sign in validation
		if($('#login-form').length > 0){
			$('#login-form').validate({
				rules:{
					email:{
						required: true,
						email: true,

					},
					password:{
						required: true,
					},
				},
				messages:{
					email:{
						required: "mag lagay din ng email",
						email: "ang email nilalagyan ng '@' saka domain",
					},
					password:{
						required: "lagyan mo password",
					},
				}
			})
		}

		//log in
	    //I used auth ui but I tweak the url
	    //and using ajax to sign in
		if ($("#login-form").valid() == true ) {
        	$("#login-form").submit(function(e) {
			    e.preventDefault();

			    $.ajax({   
			        method: "POST",
			        data: $("form#login-form").serialize(),
			        url: "/loginnow",
			        success: function(data) {
			            location.reload();
			        },
			        error: function(error) {
			            alert("Wrong Credentials")
			        }
			    })
			});
   		 }

	});


	$('#signupFormbtn').on('click',function(){
		//sign up validation
		if($('#formsignun').length > 0){
			$('#formsignun').validate({
				rules:{
					name:{
						required: true,
					},
					email:{
						required: true,
						email: true,

					},
					password:{
						required: true,
					},
					password_confirmation: {
			            required: true,
			            equalTo: "#password"
			        }
				},
				messages:{
					name:{
						required: "Mag lagay ka ng pangalan!!",
					},
					email:{
						required: "mag lagay din ng email",
						email: "ang email nilalagyan ng '@' saka domain",
					},
					password:{
						required: "lagyan mo password",
					},
					password_confirmation:{
						required: "pakiconfirm!",
						equalTo: "Dapat parehas password mo kaya nga confirmation eh",
					},
				}
			})
		}

		//storing
		//im not using the auth ui registration
		//I used the registration from my api auth controller attempt
		//since i've already established the event listener at email there
		if ($("#formsignun").valid() == true ) {
        	
			$("#formsignun").submit(function(e) {
				console.log("signup")
			    e.preventDefault();
			    $.ajax({
		    		type: 'POST',
		    		url: 'api/register',
		    		data: $('#formsignun').serialize(),
		    	});
		    	alert("EMAIL CREATED")
			   	top.location.href="/";//redirection
			});
   		 }


	});
	

});