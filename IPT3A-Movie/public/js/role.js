$(document).ready(function() {

	//calling role index and puting it inside home index
    $('.role_view').on('click',function(){
    	$('#content2').hide();
    	
    	//getting all role data
		$.ajax({
	      type: "GET",
	      url: "/role/all",
	      dataType: 'json',
	      success: function (data) {
	          //console.log(data);
	          $.each(data, function(key, value) {
	            //console.log(value);
	            id = value.id;
	            var tr = $("<tr>");
	            tr.append($("<td>").html(value.id));
	            tr.append($("<td>").html(value.role));
	            tr.append("<td align='center'><a href='#' data-toggle='modal' data-target='#roleeditModal' id='roleeditbtn' data-id="+ id + "><i class='fa fa-pencil-square-o' aria-hidden='true' style='font-size:24px' ></a></i></td>");
	            tr.append("<td><a href='#'  class='roledeletebtn' data-id="+ id + "><i  class='fa fa-trash-o' style='font-size:24px; color:red' ></a></i></td>");
	            $("#fetch_data_role").append(tr);

	          });
	        },
	      		error: function(){
	        	console.log('AJAX load did not work');
	        	alert("error");
	      	}
	  	});

    	$('#content1').load('/role');
    	
    	//call new ajax file after loading new dynamically added elements
    	//in order to find the classes and id's since I am
    	//using .load function to maintain the single page concept
    	$.getScript("js/role_afterload.js");

    });

    //web manipulation, calling actor.index file and load it to main index to maintain single page concept
    //both content 1 and 2 are divs inside main index
    //content 1 is just a div
    //content 2 displays Movies as my home/default 
     $('.role_create').on('click',function(){
     	$('#content2').hide();
    	$('#content1').load('/role/create');
    });








});