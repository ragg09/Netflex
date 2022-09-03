<div class="modal fade" id="editModal" role="dialog" style="display:none">
    <div class="modal-dialog modal-lg" >
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Update Actor</h4>
        </div>
        <div class="modal-body">
          <form id="updateform" method="#" action="#" >
          <input type="hidden" name="_token" value="{{ csrf_token() }}">
          <input type="hidden" name="_method" value="PUT">

          <div class="form-group">
            <label for="ename" class="control-label">name</label>
            <input type="text" class="form-control" id="ename" name="name"  >
            @if($errors->has('name'))
         <small>{{ $errors->first('name') }}</small>
         @endif
          </div> 

          <div class="form-group"> 
            <label for="enote" class="control-label">note</label>
            <input type="text" class="form-control " id="enote" name="note"  ></text>
          @if($errors->has('note'))
         <small>{{ $errors->first('note') }}</small>
         @endif
          </div> 

        </div>
        </form> 
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button id="updatebtn" type="submit" class="btn btn-primary">Update</button>
        </div>
      </div>
</div>