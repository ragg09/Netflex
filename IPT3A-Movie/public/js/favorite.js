$(document).ready(function() {

	$.ajax({
		type: "GET",
		url: "/favorite/all",
		dataType: 'json',
		success: function (data) {
		    console.log(data);
			$.each(data, function(key, value) {
			            //console.log(value);
			id = value.id;
			var tr = $("<tr>");
			tr.append($("<td>").html(value.title));
			tr.append($("<td>").html("<img src='http://ipt3a-movie.test/image/"+value.image+"' style='height: 200px; width: 300px;'/>"));
			tr.append("<td><a href='#'  class='favdeletebtn' data-id="+ id + "><i  class='fa fa-trash-o' style='font-size:24px; color:red' ></a></i></td>");
			$("#fetch_favorite_data").append(tr);

			});
		},
		error: function(){
			console.log('Log in first');
			//alert("error");
		}
	});

	//call new ajax file after loading new dynamically added elements
   	//in order to find the classes and id's since I am
    //using .load function to maintain the single page concept
    $.getScript("js/favorite_afterload.js");

});