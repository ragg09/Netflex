$(document).ready(function() {
	//delete button/icon will trigger this
  $(document).on("click", "a.favdeletebtn" , function(e) {
    console.log("fav delete");
    var id = $(this).data('id');
    var $tr = $(this).closest('tr');
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
            url: "/favoriterest/"+ id,
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