@extends('layouts.app')


@section('content')

<div class="container">
   <div class="row justify-content-center">
      <div class="col-md-12">
         <div class="card">
            <div class="card-header">Training Details</div>
            <div class="card-body">
                     <p style="margin-bottom: 0px;"><b>Title</b> : {{$training->title}}</p>
                     <p style="margin-bottom: 0px;"><b>Issue No</b> : {{$training->issue_no}}</p>
                     <p style="margin-bottom: 0px;"><b>Issue Date</b> : {{date_format(new DateTime($training->issue_date), 'd-m-Y')}}</p>
                     <p style="margin-bottom: 0px;"><b>Archive Date</b> : {{date_format(new DateTime($training->archive_date), 'd-m-Y')}}</p>

                     <?php $attachmentinfo = $training->getAttachementInfo($training->id); ?>

                     <?php if($attachmentinfo != '') { ?>
                     <p>Attachement: <a href="{{ asset('/upload/'.$attachmentinfo)}}" download="{{ asset('/upload/'.$attachmentinfo)}}"><i class="fa fa-paperclip" aria-hidden="true" style="font-size:20px;"></i></a> </p>
                     <?php } ?>

                     <p style="margin-bottom: 0px;">Remarks: {{$training->remarks}}</p>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <a class="btn btn-success" href="/publishTraining/{{$training->id}}"><i class="fa fa-check"></i> Publish </a>
                        <a class="btn btn-info" href="/closeTraining/{{$training->id}}"><i class="fa fa-pencil"></i> Close </a>
                        <a class="btn btn-danger" href="/deleteTraining/{{$training->id}}"><i class="fa fa-times"></i> Delete </a>
                     </div>
                  </div>
                  <div class="row">
                     
                  </div>
         </div>
      </div>
   </div>
</div>

@endsection
