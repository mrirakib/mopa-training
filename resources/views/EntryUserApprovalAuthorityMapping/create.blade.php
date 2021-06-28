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
            <div class="card-header"> Approval Authority and Entry User Mapping </div>
            <div class="card-body">
               <form name="user-institute" action="/entry-user-approval-authority" method ="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="row">
                     <div class="form-group col-12">
                        <label for="entry_user_id">Entry User</label>
                        <select name="entry_user_id" class="form-control form-control-sm" required onchange="getApprovalAuthorityInfo(this.value)">
                           <option value="">Please Select</option>
                           @foreach($entryUsers as $rowdata)
                           <option value="{{$rowdata->id}}">{{$rowdata->name}}-{{$rowdata->section}}</option>
                           @endforeach
                        </select>
                     </div>
                     <div class="form-group col-12">
                        <label for="approval_authority_user_id">Approval Authority</label>
                        <select name="approval_authority_user_id" id="approval_authority_user_id" class="form-control form-control-sm" required>
                           <option value="">Please Select</option>
                           @foreach($approvalAuthorityUsers as $rowdata)
                           <option value="{{$rowdata->id}}">{{$rowdata->name}}-{{$rowdata->section}}</option>
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
   function getApprovalAuthorityInfo(entry_user_id){
        $.ajax({
            type: "GET",
            url: "{{URL::to('/')}}/get-approval-authority-info",
            data: {
                entry_user_id: entry_user_id
            },
            success: function(result) {
                if (result != '') {
                     $("#approval_authority_user_id").val(result);
                }
            }
        }, "json");
    }
</script>
@endsection
