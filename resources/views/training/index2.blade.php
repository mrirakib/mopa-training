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
            <div class="card-header">Training List</div>

            <div class="card-body">
               <table id="dtBasicExample" class="table table-striped table-bordered table-sm table" cellspacing="0" width="100%">
                  <thead>
                     <tr>
                        <th class="th-sm">Sl</th>
                        <th class="th-sm" style="width: 45%;">Title</th>
                        <th class="th-sm" style="width: 10%;">Issue Date</th>
                        <th class="th-sm"></th>
                        <th class="th-sm">Status</th>
                        <th class="th-sm" style="">Action</th>
                     </tr>
                  </thead>
                  <?php $i=1; ?>
                  <tbody>
                     @foreach($trainings as $rowdata)
                     <tr>
                        <td>{{$i++}}</td>
                        <td>{{$rowdata->title}} {{$rowdata->id}}</td>
                        <td>{{date_format(new DateTime($rowdata->issue_date), 'd-m-Y')}}</td>

                        <?php $attachmentinfo = $rowdata->getAttachementInfo($rowdata->id); ?>

                        <td class="text-center"> <?php if($attachmentinfo != ''){ ?> <a href="{{ asset('/upload/'.$attachmentinfo)}}" download="{{ asset('/upload/'.$attachmentinfo)}}"><i class="fa fa-paperclip" aria-hidden="true" style="font-size:20px;"></i></a> <?php } ?> </td>
                        
                        @if($rowdata->status == 1)
                        <td class="font-weight-bold text-center text-success">Open</td>
                        <td> 
                           @if(isEntryUser() && (nominationDetailsStatusByUser($rowdata->id) == 0))
                              <a class="btn btn-success btn-slim" href="/nominationTraining/{{$rowdata->id}}"><i class="fa fa-eye"></i> Action </a>
                           @endif
                           <a class="btn btn-info btn-slim" href="/nominationTrainingShow/{{$rowdata->id}}"><i class="fa fa-pencil"></i> View </a></td>
                        @else
                        <td class="font-weight-bold text-center text-danger">Closed</td>
                        <td> <a class="btn btn-info btn-slim" href="/trainingdetails/{{$rowdata->id}}"><i class="fa fa-pencil"></i> View </a></td>
                        @endif
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
