$(document).ready(function() {


  //looaded by default and uses "/" route
  //getting all film data
  //I used different approach here for the sake of live search
  //just out of curiosity 
fetch_customer_data();
 function fetch_customer_data(query = '')
 {
  //console.log(window.location.search);
  history.replaceState({}, document.title, "/");
  $.ajax({
   url:"/film/action",
   method:'GET',
   data:{query:query},
   dataType:'json',
   success:function(data)
   {
    $('#fetch_data').html(data.table_data);
    $('#total_records').text(data.total_data);
   }
  })
    $.getScript("js/film_afterload.js");
    $.getScript("js/search.js");
 }



 
 $(document).on('keyup', '#mysearch', function(){
  var query = $(this).val();
  fetch_customer_data(query);
 });


  //instead of using "/" route ill just empty content1
  //then show content2 which is originally loaded
  //to avoid reload page
  $('.film_view').on('click',function(){
      $('#content1').empty(); 
      $('#content2').show(); 
  });

  //web manipulation, calling film.index file and load it to main index to maintain single page concept
    //both content 1 and 2 are divs inside main index
    //content 1 is just a div
    //content 2 displays Movies as my home/default 
     $('.film_create').on('click',function(){
      console.log("check");
      $('#content2').hide();
      $('#content1').load('/film/create');
    });


  //calling the div in dialog function
  $('#listbtn').on('click',function(){
      //console.log("nagana");
    $("#listbox").dialog({
      minWidth: 600,
      height: 400,
    });
  });

  












   
   
});


