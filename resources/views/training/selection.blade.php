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
            <div class="card-header">Training Candidate Selection</div>
            <div class="card-body">
               <p style="margin-bottom: 0px;"><b>Title</b> : {{$training->title}}</p>
               <p class="mb-0"><b>Issue No</b> : {{$training->issue_no}}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Issue Date</b> : {{date_format(new DateTime($training->issue_date), 'd-m-Y')}} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Archive Date</b> : {{date_format(new DateTime($training->archive_date), 'd-m-Y')}}</p>

               <?php $attachmentinfo = $training->getAttachementInfo($training->id); ?>

               <?php if($attachmentinfo != '') { ?>
               <p>Attachement: <a href="{{ asset('/upload/'.$attachmentinfo)}}" download="{{ asset('/upload/'.$attachmentinfo)}}"><i class="fa fa-paperclip" aria-hidden="true" style="font-size:20px;"></i></a> </p>
               <?php } ?>

               <p style="margin-bottom: 0px;">Remarks: {{$training->remarks}}</p>
            </div>
            <div class="row justify-content-center" style="margin-top: 5px;">
               <div class="col-md-12">
                  <div class="card">
                     <div class="card-header">Selection Table </div>
                     <div class="card-body">
                        <form action="/candidate-selection" method = "POST">
                           {{ csrf_field() }}
                           <input type="text" name="training_id" value="{{$training->id}}" hidden readonly required>
                           <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                              <thead>
                                 <tr>
                                    <th class="th-sm">Sl</th>
                                    @if($training->status != 4)
                                    <!-- <th class="th-sm">Select</th> -->
                                    <th class="th-sm"><div class="checkbox select-all">
                                      <label for="all">Select all</label>
                                      <input id="all" type="checkbox" />
                                    </div></th>
                                    @endif
                                    <th class="th-sm">Office</th>
                                    <th class="th-sm">ID</th>
                                    <th class="th-sm">Name</th>
                                    <th class="th-sm">Name(Bangla)</th>
                                    <th class="th-sm">Designation</th>
                                    <th class="th-sm">Designation(Bangla)</th>
                                    <th class="th-sm">Contact</th>
                                    <th class="th-sm">Email</th>
                                    <th class="th-sm">Working place</th>
                                 </tr>
                              </thead>
                              <?php $i=1; ?>
                              <tbody id="item_list_table_body">
                                 @foreach($nominations as $rowdata)
                                 <tr>
                                    <td>{{$i++}}</td>
                                    @if($training->status != 4)
                                    <td>
                                      <div class="checkbox rows">
                                       <input type="checkbox" name="id_no[]" value="{{$rowdata->id}}" @if($rowdata->status == 1) checked @endif> <label></label>
                                     </div>
                                    </td>
                                    @endif
                                    <td>{{$rowdata->getUserInfo->name}}</td>
                                    <td>{{$rowdata->id_no}}</td>
                                    <td>{{$rowdata->name}}</td>
                                    <td>{{$rowdata->name_bangla}}</td>
                                    <td>{{$rowdata->designation}}</td>
                                    <td>{{$rowdata->designation_bangla}}</td>
                                    <td>{{$rowdata->contact_no}}</td>
                                    <td>{{$rowdata->email}}</td>
                                    <td>{{$rowdata->working_place}}</td>
                                 </tr>
                                 @endforeach
                              </tbody>
                           </table>
                           @if($training->status == 2 || $training->status == 3)
                           <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Primary Selection</button>
                           @endif
                        </form>
                     </div>
                  </div>
               </div>
            </div>
            <!-- ///////////////////// -->
            <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                  <div class="modal-content">
                  
                      <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title" id="myModalLabel">Confirm Delete</h4>
                      </div>
                  
                      <div class="modal-body">
                          <p>You are about to delete one track, this procedure is irreversible.</p>
                          <p>Do you want to proceed?</p>
                          <p class="debug-url"></p>
                      </div>
                      
                      <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                          <a class="btn btn-danger btn-ok">Delete</a>
                      </div>
                  </div>
              </div>
          </div>
          <!-- /////////////// -->
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col-4">
                        @if(isAdmin())
                          @if(GOInformationFinal($training->id))
                          <a class="btn btn-success btn-slim" href="/training-govt-order/{{$training->id}}"><i class="fa fa-pencil"></i> GO(Bangla) </a>
                          @endif
                          @if(GOInformationFinalEnglish($training->id))
                          <a class="btn btn-success btn-slim" href="/training-govt-order/{{$training->id}}"><i class="fa fa-pencil"></i> GO(English) </a>
                          @endif
                        @endif
                        <a class="btn btn-secondary" href="/training"><i class="fa fa-arrow-left"></i> Back </a>
                        <!-- @if($training->status >= 2)
                        <a class="btn btn-success" href="/training-govt-order/{{$training->id}}" target="_blank"><i class="fa fa-pencil"></i> GO </a>
                        @endif -->
                     </div>
                     <div class="col-8">
                      @if(isAdmin())
                        @if($training->status == 3)
                        <a class="btn btn-danger pull-right" href="/training-make-final/{{$training->id}}"><i class="fa fa-pencil"></i> Lock Selection </a>
                        @endif
                      @endif
                     </div>
                     <!-- <button class="btn btn-default" data-href="/training/{{$training->id}}" data-toggle="modal" data-target="#confirm-delete">
                             Delete record #54
                         </button> -->
                  </div>                  
               </div>
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
