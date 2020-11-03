@extends('layouts.app')


@section('content')

<div class="container">
   <div class="row justify-content-center">
      <div class="col-md-12">
         <div class="card">
            <div class="card-header">Update Training Information</div>
            <div class="card-body">
               <form action = "/training/{{$training->id}}" method ="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  {{ method_field('PUT') }}
                  <div class="row">
                     <div class="form-group col-12">
                        <label for="training_type_id">Training Type</label>
                        <select name="training_type_id" class="form-control form-control-sm" required>
                           <option value="">Please Select</option>
                           @foreach($training_types as $rowdata)
                           <option value="{{$rowdata->id}}" @if($rowdata->id == $training->training_type_id) selected @endif>{{$rowdata->name}}</option>
                           @endforeach
                        </select>
                     </div>
                     <div class="form-group col-12">
                        <label for="title">Title</label>
                        <textarea type="text" class="form-control" name="title" rows="1" required>{{$training->title}}</textarea>
                     </div>
                     <div class="form-group col-4">
                        <label for="issue_no">Issue No</label>
                        <input type="text" class="form-control" value="{{$training->issue_no}}" name="issue_no" required>
                     </div>
                     <div class="form-group col-4">
                        <label for="issue_date">Issue Date</label>
                        <input type="text" class="form-control datepicker" value="{{date_format(new DateTime($training->issue_date), 'd-m-Y')}}" name="issue_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <div class="form-group col-4">
                        <label for="archive_date">Archive Date</label>
                        <input type="text" class="form-control datepicker" value="{{date_format(new DateTime($training->archive_date), 'd-m-Y')}}" name="archive_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <?php $attachmentinfo = $training->getAttachementInfo($training->id); ?>
                     
                     <div class="form-group col-6">
                        <label for="attachment">Attachment</label>
                        <div class="custom-file">
                           <input type="file" class="custom-file-input" id="customFile" name="attachment">
                           <label class="custom-file-label" for="customFile">Choose file</label>
                        </div>
                     </div>
                     <div class="form-group col-6">
                        <label for="remarks">Remarks</label>
                        <textarea type="text" class="form-control" name="remarks" rows="1">{{$training->remarks}}</textarea>
                     </div>
                     <?php if($attachmentinfo != ''){ ?>
                     <div class="form-group col-2">
                        <label for="attachment">Attachment</label>
                         <a href="{{ asset('/upload/'.$attachmentinfo)}}" download="{{ asset('/upload/'.$attachmentinfo)}}"><i class="fa fa-paperclip" aria-hidden="true" style="font-size:20px;"></i></a> 
                     </div>
                     <br>
                     <div class="form-group form-check col-12" style="margin-left: 15px;">
                        <input type="checkbox" class="form-check-input" name="delete_attachment" value="1">
                        <label class="form-check-label text-danger" for="delete_attachment">Delete Previous Attachment</label>
                     </div>
                     <?php } ?>
                  </div>
                  <div class="row">
                     <div class="col-2">
                        <button type="submit" class="btn btn-primary">Update</button>
                     </div>
                     <!-- <div class="col-4">
                        <a class="btn btn-success" href="/makeFinalTraining/{{$training->id}}"><i class="fa fa-check"></i> Publish </a>
                        <a class="btn btn-info" href="/closeTraining/{{$training->id}}"><i class="fa fa-pencil"></i> Close </a>
                        <a class="btn btn-danger" href="/deleteTraining/{{$training->id}}"><i class="fa fa-times"></i> Delete </a>
                     </div> -->
                  </div>
                  <div class="row">
                     
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
