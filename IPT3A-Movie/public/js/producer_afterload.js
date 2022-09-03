$(document).ready(function() {

  // display of data in edit modal
  $(document).on('click', 'a#editbtn', function(e) {
    var id = $(this).data('id');
    console.log("Gumagana ba?");
    console.log(id);
    $('<input>').attr({type: 'hidden', id:'producerid',name: 'producer_id',value: id}).appendTo('#updateform');
    $.ajax({
        type: "GET",
        url: "/producerrest/" + id + "/edit",
        success: function(data){
               console.log(data);
               $("#ename").val(data.name);
               $("#eemail").val(data.email);
          },
         error: function(){
        console.log('AJAX load did not work');
        alert("error");
          }
      });
  });

  $('#editModal').on('hidden.bs.modal', function (e) {
    $("#updateform").trigger("reset");
  });


   //update button will trigger this code
  $(document).on('click','#updatebtn', function(e) {
      var id = $('#producerid').val();
      var data = $("#updateform").serialize();
    console.log(data);
    $.ajax({
        type: "PUT",
        url: "/producerrest/"+ id,
        data: data,
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        dataType: "json",
        success: function(data) {
            console.log(data);
            $('#editModal').each(function(){
                    $(this).modal('hide'); });
            location.reload();
        },
        error: function(error) {
            console.log('error');
        }
    });
  });




  //delete button/icon will trigger this
  $(document).on("click", "a.deletebtn" , function(e) {
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
            url: "/producerrest/"+ id,
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