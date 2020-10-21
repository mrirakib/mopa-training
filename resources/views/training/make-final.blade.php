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
                           <table id="dtBasicExample" class="table table-striped table-bordered table-sm table-responsive" cellspacing="0" width="100%">
                              <thead>
                                 <tr>
                                    <th class="th-sm">Sl</th>
                                    <th class="th-sm">Select</th>
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
                                    <td>
                                       <input type="checkbox" name="id_no[]" value="{{$rowdata->id_no}}" @if($rowdata->status == 1) checked @endif> <label></label>
                                    </td>
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
                           @if($training->status == 2)
                           <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Primary Selection</button>
                           @endif
                        </form>
                     </div>
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col-4">
                        <a class="btn btn-secondary" href="/training"><i class="fa fa-arrow-left"></i> Back </a>
                        @if($training->status >= 2)
                        <a class="btn btn-success" href="/training-go/{{$training->id}}"><i class="fa fa-pencil"></i> GO </a>
                        @endif
                     </div>
                     <div class="col-8">
                        @if($training->status == 3)
                        <a class="btn btn-danger pull-right" href="/training-make-final/{{$training->id}}"><i class="fa fa-pencil"></i> Make Final </a>
                        @endif
                     </div>
                  </div>                  
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
