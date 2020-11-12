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
                        @if(Auth::user()->user_type == 1)
                        <th class="th-sm">Office</th>
                        @endif
                        <th class="th-sm" style="width: 45%;">Title</th>
                        <th class="th-sm" style="width: 10%;">Issue Date</th>
                        <!-- <th class="th-sm">Archive Date</th> -->
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
                        @if(Auth::user()->user_type == 1)
                        <td>{{$rowdata->getAdminInfo->name}}</td>
                        @endif
                        <td>{{$rowdata->title}}</td>
                        <td>{{date_format(new DateTime($rowdata->issue_date), 'd-m-Y')}}</td>
                        <!-- <td>{{date_format(new DateTime($rowdata->archive_date), 'd-m-Y')}}</td> -->

                        <?php $attachmentinfo = $rowdata->getAttachementInfo($rowdata->id); ?>

                        <td class="text-center"> <?php if($attachmentinfo != ''){ ?> <a href="{{ asset('/upload/'.$attachmentinfo)}}" download="{{ asset('/upload/'.$attachmentinfo)}}"><i class="fa fa-paperclip" aria-hidden="true" style="font-size:20px;"></i></a> <?php } ?> </td>
                        @if(isSuperAdmin() || isAdmin())
                        <?php if($rowdata->status == 0){ ?>
                        <td class="font-weight-bold text-center text-primary">Draft(Click view button to Publish the Training)</td>
                        <td> 
                           <a class="btn btn-primary btn-slim" href="/training/{{$rowdata->id}}/edit"><i class="fa fa-pencil"></i> Edit </a>
                           <a class="btn btn-info btn-slim" href="/training/{{$rowdata->id}}"><i class="fa fa-eye"></i> View </a>
                        </td>
                        <?php } elseif($rowdata->status == 1){ ?>
                        <td class="font-weight-bold text-center text-success">Open</td>
                        <td> <a class="btn btn-info btn-slim" href="/training/{{$rowdata->id}}"><i class="fa fa-eye"></i> View </a></td>
                        <?php } elseif($rowdata->status == 2) { ?>
                        <td class="font-weight-bold text-center text-danger">Closed</td>
                        <td>
                           <a class="btn btn-info btn-slim" href="/training/{{$rowdata->id}}"><i class="fa fa-pencil"></i> View </a>
                        </td>
                        <?php } elseif($rowdata->status == 3) { ?>
                        <td class="font-weight-bold text-center text-danger">Primary Selection</td>
                        <td>
                           <a class="btn btn-info btn-slim" href="/training/{{$rowdata->id}}"><i class="fa fa-pencil"></i> View </a>
                        </td>
                        <?php } elseif($rowdata->status == 4) { ?>
                        <td class="font-weight-bold text-center text-danger">Selection Completed</td>
                        <td>
                           <a class="btn btn-info btn-slim" href="/training/{{$rowdata->id}}"><i class="fa fa-pencil"></i> View </a>
                           <a class="btn btn-primary btn-slim" href="/candidate-list-export/{{$rowdata->id}}"><i class="fa fa-pencil"></i> Excel </a>
                           @if(!GOInformationFinal($rowdata->id) && Auth::user()->user_type == 2)
                           <a class="btn btn-success btn-slim" href="{{ route('goInformation.create', [$rowdata->id]) }}"><i class="fa fa-pencil"></i> GO Info </a>
                              @if(GOInformationDraft($rowdata->id))
                              <a class="btn btn-success btn-slim" href="/training-govt-order-temp/{{$rowdata->id}}" target="_blank"><i class="fa fa-pencil"></i> Draft GO </a>
                              @endif
                           @elseif(GOInformationFinal($rowdata->id))
                           <a class="btn btn-success btn-slim" href="/training-govt-order/{{$rowdata->id}}" target="_blank"><i class="fa fa-pencil"></i> GO </a>
                           @endif

                           @if(!GOInformationFinalEnglish($rowdata->id) && Auth::user()->user_type == 2)
                           <a class="btn btn-warning btn-slim" href="{{ route('goInformationEnglish.create', [$rowdata->id]) }}"><i class="fa fa-pencil"></i> GO Info(E) </a>
                              @if(GOInformationDraftEnglish($rowdata->id))
                              <a class="btn btn-warning btn-slim" href="/training-govt-order-temp-english/{{$rowdata->id}}" target="_blank"><i class="fa fa-pencil"></i> Draft GO(E) </a>
                              @endif
                           @elseif(GOInformationFinalEnglish($rowdata->id))
                           <a class="btn btn-warning btn-slim" href="/training-govt-order-english/{{$rowdata->id}}" target="_blank"><i class="fa fa-pencil"></i> GO(E) </a>
                           @endif
                        </td>
                        <?php } elseif($rowdata->status == 5) { ?>
                        <td class="font-weight-bold text-center text-danger">Deleted</td>
                        <td> <a class="btn btn-info btn-slim" href="/training/{{$rowdata->id}}"><i class="fa fa-pencil"></i> View </a></td>
                        <?php } ?>
                        @else
                        <?php if($rowdata->status == 1){ ?>
                        <td class="font-weight-bold text-center text-success">Open</td>
                        <td> <a class="btn btn-success btn-slim" href="/nominationTraining/{{$rowdata->id}}"><i class="fa fa-eye"></i> Action </a> </td>
                        <?php } else { ?>
                        <td class="font-weight-bold text-center text-danger">Closed</td>
                        <td> <a class="btn btn-info btn-slim" href="/trainingdetails/{{$rowdata->id}}"><i class="fa fa-pencil"></i> View </a></td>
                        <?php } ?>
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
