$(document).ready(function() {

  // display of data in edit modal
  $(document).on('click', 'a#roleeditbtn', function(e) {
    var id = $(this).data('id');
    console.log("Gumagana ba?");
    console.log(id);
    $('<input>').attr({type: 'hidden', id:'roleid',name: 'role_id',value: id}).appendTo('#roleupdateform');
    $.ajax({
        type: "GET",
        url: "/rolerest/" + id + "/edit",
        success: function(data){
               console.log(data);
               $("#erole").val(data.role);
          },
         error: function(){
        console.log('AJAX load did not work');
        alert("error");
          }
      });
  });

  $('#roleeditModal').on('hidden.bs.modal', function (e) {
    $("#roleupdateform").trigger("reset");
  });


   //update button will trigger this code
  $(document).on('click','#roleupdatebtn', function(e) {
      var id = $('#roleid').val();
      var data = $("#roleupdateform").serialize();
    console.log(data);
    $.ajax({
        type: "PUT",
        url: "/rolerest/"+ id,
        data: data,
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        dataType: "json",
        success: function(data) {
            console.log(data);
            $('#roleeditModal').each(function(){
                    $(this).modal('hide'); });
            location.reload();
        },
        error: function(error) {
            console.log('error');
        }
    });
  });




  //delete button/icon will trigger this
  $(document).on("click", "a.roledeletebtn" , function(e) {
    console.log("try muna");
    var id = $(this).data('id');
    var $tr = $(this).closest('tr')
    console.log(id);
    e.preventDefault();
    bootbox.confirm({
      message: "do you want to delete this role",
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
            url: "/rolerest/"+ id,
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
    


});