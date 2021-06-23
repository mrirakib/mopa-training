@extends('layouts.app')
@section('content')
<div class="container">
   <div class="row justify-content-center">
      <div class="col-md-12">
         <div class="card">
            @if(Session::has('Msgsuccess'))
            <div class="alert alert-success alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Success!</strong> {{Session::get('Msgsuccess')}}
            </div>
            @endif
            <div class="card-header"> Mapping training institute with user </div>
            <div class="card-body">
               <form name="user-institute" action="/userInstitute" method ="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="row">
                     <div class="form-group col-12">
                        <label for="user_id">User</label>
                        <select name="user_id" class="form-control form-control-sm" required onchange="getUserInstituteInfo(this.value)">
                           <option value="">Please Select</option>
                           @foreach($users as $rowdata)
                           <option value="{{$rowdata->id}}">{{$rowdata->name}}</option>
                           @endforeach
                        </select>
                     </div>
                     <div class="form-group col-12">
                        <label for="organization_id">Organization</label>
                        <select name="organization_id" id="organization_id" class="form-control form-control-sm" required>
                           <option value="">Please Select</option>
                           @foreach($organizations as $rowdata)
                           <option value="{{$rowdata->id}}">{{$rowdata->name}}</option>
                           @endforeach
                        </select>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-3">
                        <button type="submit" class="btn btn-primary">Save</button>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<script>
   function getUserInstituteInfo(user_id){
      // alert(user_id);
        $.ajax({
            type: "GET",
            url: "{{URL::to('/')}}/get-user-institute-info",
            data: {
                user_id: user_id
            },
            success: function(result) {
                if (result != '') {
                     $("#organization_id").val(result);
                    // alert(result);
                    // $('#admin_id').html(result);
                }
            }
        }, "json");
    }
</script>
@endsection
