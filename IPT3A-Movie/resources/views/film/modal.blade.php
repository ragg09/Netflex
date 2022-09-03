<div class="modal fade" id="filmeditModal" role="dialog" style="display:none">
    <div class="modal-dialog modal-lg" >
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Update film</h4>
        </div>
        <div class="modal-body">
          <form id="filmupdateform" method="#" action="#" >
          <input type="hidden" name="_token" value="{{ csrf_token() }}">
          <input type="hidden" name="_method" value="PUT">

          <div class="form-group">
            <label for="etitle" class="control-label">title</label>
            <input type="text" class="form-control" id="etitle" name="title"  >
          </div> 

          <div class="form-group">
            <label for="estory" class="control-label">story</label>
            <input type="text" class="form-control" id="estory" name="story"  >
          </div> 

          <div class="form-group">
            <label for="ereleased_at" class="control-label">released_at</label>
            <input type="date" class="form-control" id="ereleased_at" name="released_at"  >
          </div> 

          <div class="form-group">
            <label for="eduration" class="control-label">duration</label>
            <input type="text" class="form-control" id="eduration" name="duration"  >
          </div>

          <div class="form-group">
            <label for="einfo" class="control-label">info</label>
            <input type="text" class="form-control" id="einfo" name="info"  >
          </div> 

        </div>
        </form> 
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button id="filmupdatebtn" type="submit" class="btn btn-primary">Update</button>
        </div>
      </div>
</div>