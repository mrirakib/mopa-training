@extends('layouts.app')

@section('content')
<style>
   .btn{
      margin-bottom: 5px;
   }
</style>
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
            <div class="card-header">Training Calender List</div>

            <div class="card-body">
               <table id="dtBasicExample" class="table table-striped table-bordered table-sm table" cellspacing="0" width="100%">
                  <thead>
                     <tr>
                        <th class="th-sm align-top">Sl</th>
                        <th class="th-sm align-top">Organization</th>
                        <th class="th-sm align-top" style="width: 40%;">Title</th>
                        <th class="th-sm align-top">Issue Date</th>
                        <th class="th-sm align-top">Application Date</th>
                        <th class="th-sm align-top">Training Date</th>
                        <th class="th-sm align-top">Attachment</th>
                        <th class="th-sm align-top" style="">Action</th>
                     </tr>
                  </thead>
                  <?php $i=1; ?>
                  <tbody>
                     @foreach($trainingCalenders as $rowdata)
                     <tr>
                        <td>{{$i++}}</td>
                        <td>{{$rowdata->getOrganizationInfo->name}}</td>
                        <td>{{$rowdata->title}}</td>
                        <td>{{date_format(new DateTime($rowdata->issue_date), 'd-m-Y')}}</td>
                        <td>{{date_format(new DateTime($rowdata->application_start_date), 'd-m-Y')}}</td>
                        <td>{{date_format(new DateTime($rowdata->training_start_date), 'd-m-Y')}}</td>
                        <?php $attachmentinfo = $rowdata->getAttachementInfo($rowdata->id); ?>

                        <td class="text-center"> <?php if($attachmentinfo != ''){ ?> <a href="{{ asset('/upload/'.$attachmentinfo)}}" download="{{ asset('/upload/'.$attachmentinfo)}}"><i class="fa fa-paperclip" aria-hidden="true" style="font-size:20px;"></i></a> <?php } ?> </td>
                        <td> 
                           <a class="btn btn-info btn-slim" href="/trainingCalender/{{$rowdata->id}}"><i class="fa fa-eye"></i> View </a>
                           <a class="btn btn-success btn-slim" href="/trainingCalender/{{$rowdata->id}}/edit"><i class="fa fa-pencil"></i> Edit </a>
                        </td>
                     </tr>
                     @endforeach                     
                  </tbody>
               </table>
            </div>
         </div>
      </div>
   </div>
</div>
@endsection
