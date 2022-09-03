$(document).ready(function() {

	//Getting all titles in database 
	//that will be using as the array
	//for autocomplete
	var searchlist = [];
	 $.ajax({
	      type: "GET",
	      url: "/film/search",
	      dataType: 'json',
	      success: function (data) {
		      $.each(data, function(key, value) {
		      	//since json is an object, we cant directly
		      	// use it to our array so we will
		      	//be pushing it to our searchlist array variable
		      	searchlist.push(value.title);
	          });

	        },
	      		error: function(){
	        	console.log('AJAX load did not work');
	        	alert("error");
	      	}

  	});

	  

 	$('#mysearchbtn').on('click',function(){
 		//for checking purposes
  		console.log(searchlist);

		$(".searchbtn").autocomplete({
		    source: searchlist
		},{
			autofocus: true,
			delay: 500
		});
      
    });


   
});