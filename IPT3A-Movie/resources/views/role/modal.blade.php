<div class="modal fade" id="roleeditModal" role="dialog" style="display:none">
    <div class="modal-dialog modal-lg" >
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Update Role</h4>
        </div>
        <div class="modal-body">
          <form id="roleupdateform" method="#" action="#" >
          <input type="hidden" name="_token" value="{{ csrf_token() }}">
          <input type="hidden" name="_method" value="PUT">

          <div class="form-group">
            <label for="erole" class="control-label">role</label>
            <input type="text" class="form-control" id="erole" name="role"  >
            @if($errors->has('role'))
         <small>{{ $errors->first('role') }}</small>
         @endif
          </div> 

        </div>
        </form> 
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button id="roleupdatebtn" type="submit" class="btn btn-primary">Update</button>
        </div>
      </div>
</div>