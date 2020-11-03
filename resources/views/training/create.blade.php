@extends('layouts.app')
@section('content')
<div class="container">
   <div class="row justify-content-center">
      <div class="col-md-12">
         <div class="card">
            <div class="card-header"> Add New Training </div>
            <div class="card-body">
               <form name="training-create" action="/training" method ="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="row">
                     <div class="form-group col-12">
                        <label for="training_type_id">Training Type</label>
                        <select name="training_type_id" class="form-control form-control-sm" required>
                           <option value="">Please Select</option>
                           @foreach($training_types as $rowdata)
                           <option value="{{$rowdata->id}}">{{$rowdata->name}}</option>
                           @endforeach
                        </select>
                     </div>
                     <div class="form-group col-12">
                        <label for="title">Title</label>
                        <textarea type="text" class="form-control form-control-sm" name="title" rows="1" required></textarea>
                     </div>
                     <div class="form-group col-4">
                        <label for="issue_no">Issue No</label>
                        <input type="text" min="0" class="form-control form-control-sm" name="issue_no" required>
                     </div>
                     <div class="form-group col-4">
                        <label for="issue_date">Issue Date</label>
                        <input type="text" class="form-control form-control-sm datepicker" name="issue_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <div class="form-group col-4">
                        <label for="archive_date">Archive Date</label>
                        <input type="text" class="form-control form-control-sm datepicker" name="archive_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     
                     <div class="form-group col-6">
                        <label for="attachment">Attachment</label>
                        <div class="custom-file">
                           <input type="file" class="custom-file-input form-control-sm" id="customFile" name="attachment">
                           <label class="custom-file-label  form-control-sm" for="customFile">Choose file</label>
                        </div>
                     </div>
                     <div class="form-group col-6">
                        <label for="remarks">Remarks</label>
                        <textarea type="text" class="form-control form-control-sm" name="remarks" rows="1"></textarea>
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

@endsection
