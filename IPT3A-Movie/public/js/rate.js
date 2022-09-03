$(document).ready(function() {
	$(document).on('click', '#ratebtn', function(e) {
		e.preventDefault();
		console.log($('.showinfoform').serialize());
		$.ajax({
	    		type: 'POST',
	    		url: '/rate/store',
	    		data: $('.showinfoform').serialize(),
	    		success: function(response){
	    			top.location.href="/";//redirection
	    			alert('Rate Created!!');
	    			
	    		},
	    		error: function(response){
	    			console.log("Something went wrong")
	    		}
	    	});
	});
});
