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
            <div class="card-header">Training Details</div>
            <div class="card-body">
               <p style="margin-bottom: 0px;"><b>Title</b> : {{$training->title}}</p>
               <p class="mb-0"><b>Issue No</b> : {{$training->issue_no}}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Issue Date</b> : {{date_format(new DateTime($training->issue_date), 'd-m-Y')}} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Archive Date</b> : {{date_format(new DateTime($training->archive_date), 'd-m-Y')}}</p>

               <?php $attachmentinfo = $training->getAttachementInfo($training->id); ?>

               <?php if($attachmentinfo != '') { ?>
               <p>Attachement: <a href="{{ asset('/upload/'.$attachmentinfo)}}" download="{{ asset('/upload/'.$attachmentinfo)}}"><i class="fa fa-paperclip" aria-hidden="true" style="font-size:20px;"></i></a> </p>
               <?php } ?>

               <p style="margin-bottom: 0px;">Remarks: {{$training->remarks}}</p>
            </div>
            @if($training->status >= 1)
            <div class="row justify-content-center" style="margin-top: 5px;">
               <div class="col-md-12">
                  <div class="card">
                     <div class="card-header">Nomination Table </div>
                     <div class="card-body">
                        <form action = "/nomination" method = "POST">
                           {{ csrf_field() }}
                           <input type="text" name="training_id" value="{{$training->id}}" hidden readonly required>
                           <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                              <thead>
                                 <tr>
                                    <th class="th-sm">Sl</th>
                                    <th class="th-sm">Office</th>
                                    <th class="th-sm">ID</th>
                                    <th class="th-sm">Name</th>
                                    <th class="th-sm">Name(Bangla)</th>
                                    <th class="th-sm">Designation</th>
                                    <th class="th-sm">Designation(Bangla)</th>
                                    <th class="th-sm">Contact</th>
                                    <th class="th-sm">Email</th>
                                    <th class="th-sm">Working place</th>
                                    <th class="th-sm">Working place(Bangla)</th>
                                 </tr>
                              </thead>
                              <?php $i=1; ?>
                              <tbody id="item_list_table_body">
                                 @foreach($nominations as $rowdata)
                                 <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$rowdata->getUserInfo->name}}</td>
                                    <td>{{$rowdata->id_no}}</td>
                                    <td>{{$rowdata->name}}</td>
                                    <td>{{$rowdata->name_bangla}}</td>
                                    <td>{{$rowdata->designation}}</td>
                                    <td>{{$rowdata->designation_bangla}}</td>
                                    <td>{{$rowdata->contact_no}}</td>
                                    <td>{{$rowdata->email}}</td>
                                    <td>{{$rowdata->working_place}}</td>
                                    <td>{{$rowdata->working_place_bangla}}</td>
                                 </tr>
                                 @endforeach
                              </tbody>
                           </table>
                           <!-- <button type="submit" class="btn btn-primary">Submit</button> -->
                        </form>
                     </div>
                  </div>
               </div>
            </div>
            @endif
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col-4">
                        @if(isAdmin())
                           @if($training->status == 0)
                           <a class="btn btn-success" href="/publishTraining/{{$training->id}}"><i class="fa fa-check"></i> Publish </a>
                           @endif
                           @if($training->status == 1 && Auth::user()->user_type == 2)
                           <a class="btn btn-info" href="/closeTraining/{{$training->id}}"><i class="fa fa-pencil"></i> Close </a>
                           <!-- <a class="btn btn-danger" href="/deleteTraining/{{$training->id}}"><i class="fa fa-times"></i> Delete </a> -->
                           @endif
                        @endif
                        
                        <a class="btn btn-secondary" href="/training"><i class="fa fa-arrow-left"></i> Back </a>
                     </div>
                  </div>                  
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
