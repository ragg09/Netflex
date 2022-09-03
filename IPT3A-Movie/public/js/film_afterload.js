$(document).ready(function() {


  // display of data in edit modal
  $(document).on('click', 'a#filmeditbtn', function(e) {
    $("#editModal").dialog();
    console.log('waw');
    var id = $(this).data('id');
    console.log("Gumagana ba?");
    console.log(id);
    $('<input>').attr({type: 'hidden', id:'filmid',name: 'film_id',value: id}).appendTo('#filmupdateform');
    console.log("working hangang dito");
    $.ajax({
        type: "GET",
        url: "/filmrest/" + id + "/edit",
        success: function(data){
              $.each(data, function(key, value) {
              //console.log(value);
              //id = value.id;
               $("#etitle").val(value.title);
               $("#estory").val(value.story);
               $("#ereleased_at").val(value.released_at);
               $("#eduration").val(value.duration);
               $("#einfo").val(value.info);

            });
          },
         error: function(){
        console.log('AJAX load did not work');
        alert("error");
          }
      });
  });

  $('#filmeditModal').on('hidden.bs.modal', function (e) {
    $("#filmupdateform").trigger("reset");
  });


   //update button will trigger this code
  $(document).on('click','#filmupdatebtn', function(e) {
      var id = $('#filmid').val();
      var data = $("#filmupdateform").serialize();
    console.log(data);
    $.ajax({
        type: "PUT",
        url: "/filmrest/"+ id,
        data: data,
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        dataType: "json",
        success: function(data) {
            console.log(data);
            $('#filmeditModal').each(function(){
                    $(this).modal('hide'); });
            location.reload();
        },
        error: function(error) {
            console.log('error');
        }
    });
  });




  //delete button/icon will trigger this
  $(document).on("click", "a.filmdeletebtn" , function(e) {
    console.log("try muna");
    var id = $(this).data('id');
    var $tr = $(this).closest('tr')
    console.log(id);
    e.preventDefault();
    bootbox.confirm({
      message: "do you want to delete this customer",
      buttons: {
        confirm: {
          label: 'yes',
          className: 'btn-success'
        },
        cancel: {
          label: 'no',
          className: 'btn-danger'
        }
      },
      callback: function (result) {
        if (result)
          $.ajax({
            type: "DELETE",
            url: "/filmrest/"+ id,
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            dataType: "json",
            success: function(data) {
              console.log(data);
              $tr.find('td').fadeOut(2000,function(){ 
                $tr.remove();  
                location.reload();
              });   
            },
            error: function(error) {
              console.log('error');
            }
          });
      }
    });

  });



  //display film with rating
  $(document).on('click', 'a.filmshowbtn', function(e) {
    var totalrate = 0;
    $('#content2').hide();
    console.log('showinfo');
    var id = $(this).data('id');
    console.log(id);
    $.ajax({
        type: "GET",
        url: "/filmrest/" + id,
        success: function(data){
          console.log(data)//checking if im fetching my json
          var p = $("<p>");
          var p2 = $("<p>");
          console.log("No. of Array: " + data.rate.length);//checking total no. of arrays

            $.each(data.rate, function(index, vals){
                totalrate += vals.rate;
                console.log("Rate values: " +vals.rate)//checking if im fetching all the rates
            });

            var computedrate = totalrate/data.rate.length;
            console.log("Overall rate: "+computedrate);//checking the summation of rates

            $.each(data.film, function(index, val){
              p.append("<img src='http://ipt3a-movie.test/image/"+val.image+"'style='height: 500px; width: 100%;'>");
              p.append("<center><h1>"+val.title+"</h1></center>");
              p.append("<center><h3>Story:</h3></center>");
              p.append("<center><h4>"+val.story+"</h4></center>");
              p.append("<center><h3>Ratings: "+computedrate+"/5</h3></center>");
              p.append("<br>");
              p2.append("<center><h3>Rate</h3></center>");
              p2.append("<center><input type='text' name='film_id' id='user_id' value='"+val.id+"' hidden></center>");
              p2.append("<center><select style='width: 10%;' id='rate' name='rate'><option value='1'>1</option><option value='2'>2</option><option value='3'>3</option><option value='4'>4</option><option value='5'>5</option></select></center>");
              p2.append("<center><input type='submit' id='ratebtn'></center>");
              p2.append("<br>");

            });
            
            $(".showinfo").append(p);
            $(".showinfoform").append(p2);
          },
         error: function(){
        console.log('AJAX load did not work');
        alert("error");
          }
    });
    $('#content1').load('/film/showinfo');

  });

    


});