$(document).ready(function() {

	//validate actor form
	$('#actorFormbtn').on('click',function(){
		
		if($('#actorForm').length > 0){
			$('#actorForm').validate({
				rules:{
					name:{
						required: true,
					},
					note:{
						required: true,
					}
				},
				messages:{
					name:{
						required: "Mag lagay ka ng pangalan!!",
					},
					note:{
						required: "wag mo kalimutan yung note!",
					},
				}
			})
		}

		if ($("#actorForm").valid() == true ) {
			//storing actor data
	    	$.ajax({
	    		type: 'POST',
	    		url: '/actor/store',
	    		data: $('#actorForm').serialize(),
	    		success: function(response){
	    			top.location.href="/";//redirection
	    			alert('Actor Created!!');
	    			
	    		},
	    		error: function(response){
	    			console.log("Something went wrong")
	    		}
	    	});
	    	//$(".actor_view").click(); 

	    	
		}
     	
    });

	//validate role form
    $('#roleFormbtn').on('click',function(){
		if($('#roleForm').length > 0){
			$('#roleForm').validate({
				rules:{
					role:{
						required: true,
					},
				},
				messages:{
					role:{
						required: "Anong ganap mo dito?",
					},
				}
			})
		}

		if ($("#roleForm").valid() == true ) {
			//storing role data
	    	$.ajax({
	    		type: 'POST',
	    		url: '/role/store',
	    		data: $('#roleForm').serialize(),
	    		success: function(response){
	    			top.location.href="/";//redirection
	    			alert('role Created');
	    		},
	    		error: function(response){
	    			console.log("Something went wrong")
	    		}
	    	});
    	}
     	
    });

    //validate genre form
    $('#genreFormbtn').on('click',function(){
		if($('#genreForm').length > 0){
			$('#genreForm').validate({
				rules:{
					genre:{
						required: true,
					},
				},
				messages:{
					genre:{
						required: "Maglagay ka ng genre!",
					},
				}
			})
		}

		if ($("#genreForm").valid() == true ) {
			//storing genre data
	    	$.ajax({
	    		type: 'POST',
	    		url: '/genre/store',
	    		data: $('#genreForm').serialize(),
	    		success: function(response){
	    			top.location.href="/";//redirection
	    			alert('genre Created');
	    		},
	    		error: function(response){
	    			console.log("Something went wrong")
	    		}
	    	});
	    }
     	
    });

    //validate producer form
    $('#producerFormbtn').on('click',function(){
		if($('#producerForm').length > 0){
			$('#producerForm').validate({
				rules:{
					name:{
						required: true,
					},
					email:{
						required: true,
						email: true,
					},
				},
				messages:{
					name:{
						required: "Wala kang pangaln!",
					},
					email:{
						required: "mag lagay ka ng email",
						email: "dapat may '@'",
					},
				}
			})
		}

		if ($("#producerForm").valid() == true ) {
			//storing producer data
	    	$.ajax({
	    		type: 'POST',
	    		url: '/producer/store',
	    		data: $('#producerForm').serialize(),
	    		success: function(response){
	    			top.location.href="/";//redirection
	    			alert('producer Created');
	    		},
	    		error: function(response){
	    			console.log("Something went wrong")
	    		}
	    	});
    }
     	
    });

    //validate Film form
    $('#filmFormbtn').on('click',function(){
		if($('#filmForm').length > 0){
			$('#filmForm').validate({
				rules:{
					title:{
						required: true,
					},
					story:{
						required: true,
					},
					actor:{
						required: true,
					},
					role:{
						required: true,
					},
					genre:{
						required: true,
					},
					producer:{
						required: true,
					},
					released_at:{
						required: true,
					},
					duration:{
						required: true,
						number: true,
					},
					info:{
						required: true,
					},

				},
				messages:{
					title:{
						required: "Lahat ng movie may title",
					},
					story:{
						required: "syempre pasabikin mo naman kami konte",
					},
					actor:{
						required: "Sino actor mo multo?",
					},
					role:{
						required: "anong role nyang actor mo",
					},
					genre:{
						required: "So ano to kami bahala sa genre?",
					},
					producer:{
						required: "Sino producer nito?",
					},
					released_at:{
						required: "panahong kopong kopong pa ata",
					},
					duration:{
						required: "Ilang oras to?",
						number: "number lang lagay mo",
					},
					info:{
						required: "additional info naman diyan",
					},
				}
			})
		}

		if ($("#filmForm").valid() == true ) {
			//storing film data
	    	$.ajax({
	    		type: 'POST',
	    		url: '/film/store',
	    		contentType: 'multipart/form-data',
	    		data: $('#filmForm').serialize(),
	    		success: function(response){
	    			top.location.href="/";//redirection
	    			alert('film Created');
	    		},
	    		error: function(response){
	    			console.log("Something went wrong")
	    		}
	    	});
	    }

		

     	
    });

   









});