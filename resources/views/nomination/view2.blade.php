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
            @if(Session::has('Msgerror'))
            <div class="alert alert-danger alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Error!</strong> {{Session::get('Msgerror')}}
            </div>
            @endif
            <div class="card-header">Add Nominations </div>
            <div class="card-body">
               <p class="mb-0"><b>Title</b> : {{$training->title}}</p>
               <!-- <p class="mb-0"><b>Issue No</b> : {{$training->issue_no}}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Issue Date</b> : {{date_format(new DateTime($training->issue_date), 'd-m-Y')}} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Archive Date</b> : {{date_format(new DateTime($training->archive_date), 'd-m-Y')}}</p>

               <?php $attachmentinfo = $training->getAttachementInfo($training->id); ?>

               <?php if($attachmentinfo != '') { ?>
               <p class="mb-0">Attachement: <a href="{{ asset('/upload/'.$attachmentinfo)}}" download="{{ asset('/upload/'.$attachmentinfo)}}"><i class="fa fa-paperclip" aria-hidden="true" style="font-size:20px;"></i></a> </p>
               <?php } ?>

               <p class="mb-0"><b>Remarks</b> : {{$training->remarks}}</p> -->
            </div>
         </div>
      </div>
   </div>
   <div class="row justify-content-center" style="margin-top: 5px;">
      <div class="col-md-12">
         <div class="card">
            <div class="card-header">Nomination Table </div>
            <div class="card-body table-responsive">
               <form action = "/nominationTrainingApproveDraft" method = "POST" id="nominationTable">
                  {{ csrf_field() }}
                  <input type="text" name="training_id" value="{{$training->id}}" hidden readonly required>
                  <table id="" class="table table-striped table-bordered table-sm " cellspacing="0" width="100%">
                     <thead>
                        <tr>
                           <th class="th-sm">Sl</th>
                           <th class="th-sm">Status</th>
                           <th class="th-sm">ID</th>
                           <th class="th-sm">Name</th>
                           <th class="th-sm">Name(Bangla)</th>
                           <th class="th-sm">Designation</th>
                           <th class="th-sm">Designation(Bangla)</th>
                           <th class="th-sm">Working place</th>
                           <th class="th-sm">Working place(Bangla)</th>
                           <th class="th-sm">Contact</th>
                           <th class="th-sm">Email</th>
                           <th class="th-sm">Cadre</th>
                           <th class="th-sm">Batch</th>
                           <th class="th-sm">Gender</th>
                           <th class="th-sm">Date of Birth</th>
                        </tr>
                     </thead>
                     <tbody id="item_list_table_body">
                        <?php $i=1; ?>
                        @foreach($nominations as $rowdata)
                        <tr>
                           <td>{{$i++}}</td>
                           <td>
                              @if($rowdata->stage_status == 1)
                              <span class="text-success">Selected</span>
                              @else
                              <span class="text-danger">Not Selected</span>
                              @endif
                           </td>
                           <td>
                              {{$rowdata->id_no}}
                           </td>
                           <td>
                              {{$rowdata->name}}
                           </td>
                           <td>
                              {{$rowdata->name_bangla}}
                           </td>
                           <td>
                              {{$rowdata->designation}}
                           </td>
                           <td>
                              {{$rowdata->designation_bangla}}
                           </td>
                           <td>
                              {{$rowdata->working_place}}
                           </td>                           
                           <td>
                              {{$rowdata->working_place_bangla}}
                           </td>
                           <td>
                              {{$rowdata->contact_no}}
                           </td>
                           <td>
                              {{$rowdata->email}}
                           </td>
                           <td>
                              {{$rowdata->getCadreInfo->cadre_name}}
                           </td>
                           <td>
                              {{$rowdata->batch}}
                           </td>
                           <td>
                              {{$rowdata->gender}}
                           </td>
                           <td>
                              {{date_format(new DateTime($rowdata->date_of_birth), 'd-m-Y')}}
                           </td>
                        </tr>
                        @endforeach
                     </tbody>
                  </table>
                  @if(isEntryUser() && $nomination->status == 0)
                  <a class="btn btn-info btn-slim" href="/nominationTrainingSendToApprovalAuthority/{{$training->id}}"><i class="fa fa-pencil"></i> Send to Approval Authority </a>
                  @endif
                  @if(isApprovalAuthority() && $nomination->status == 1)
                  <button type="submit" class="btn btn-primary btn-slim">Save as Draft</button>
                  <a class="btn btn-info btn-slim" href="/nominationTrainingApprovedAndSendToAdmin/{{$training->id}}"><i class="fa fa-pencil"></i> Approved and Send to Admin </a>
                  @endif
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<script>
  $('#all').change(function(e) {
    if (e.currentTarget.checked) {
    $('.rows').find('input[type="checkbox"]').prop('checked', true);
  } else {
      $('.rows').find('input[type="checkbox"]').prop('checked', false);
    }
  });
</script>
@endsection
