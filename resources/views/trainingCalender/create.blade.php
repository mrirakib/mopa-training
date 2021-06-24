@extends('layouts.app')
@section('content')
<div class="container">
   <div class="row justify-content-center">
      <div class="col-md-12">
         <div class="card">
            <div class="card-header"> Add New Training Calender</div>
            <div class="card-body">
               <form name="training-create" action="/trainingCalender" method ="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="row">
                     <div class="form-group col-3">
                        <label for="organization_id">Organization</label>
                        <select name="organization_id" class="form-control form-control-sm" required>
                           <option value="">Please Select</option>
                           @foreach($userInstitutes as $rowdata)
                           <option value="{{$rowdata->organization_id}}">{{$rowdata->getOrganizationInfo->name}}</option>
                           @endforeach
                        </select>
                     </div>
                     <div class="form-group col-3">
                        <label for="financial_year">Financial Year</label>
                        <select name="financial_year" class="form-control form-control-sm" required>
                           <option value="">Please Select</option>
                           <option value="2021-2022">2021-2022</option>
                        </select>
                     </div>
                     <div class="form-group col-3">
                        <label for="residence_type_id">Residence Type</label>
                        <select name="residence_type_id" class="form-control form-control-sm" required>
                           <option value="">Please Select</option>
                           <option value="1">Residence</option>
                           <option value="2">Non-Residence</option>
                        </select>
                     </div>
                     <div class="form-group col-3">
                        <label for="attaindance_type_id">Attaindance Type</label>
                        <select name="attaindance_type_id" class="form-control form-control-sm" required>
                           <option value="">Please Select</option>
                           <option value="1">Conventional</option>
                           <option value="2">Online</option>
                           <option value="3">Mixed</option>
                        </select>
                     </div>
                     <div class="form-group col-12">
                        <label for="title">Title</label>
                        <textarea type="text" class="form-control form-control-sm" name="title" rows="1" required></textarea>
                     </div>
                     <div class="form-group col-3">
                        <label for="trainee_number">Number of Trainee</label>
                        <input type="text" min="0" class="form-control form-control-sm" name="trainee_number" required>
                     </div>
                     <div class="form-group col-3">
                        <label for="issue_no">Issue No</label>
                        <input type="text" class="form-control form-control-sm" name="issue_no" required>
                     </div>
                     <div class="form-group col-3">
                        <label for="trainee_level">Trainee level</label>
                        <input type="text" class="form-control form-control-sm" name="trainee_level" required>
                     </div>
                     <div class="form-group col-3">
                        <label for="issue_date">Calender Issue Date</label>
                        <input type="text" class="form-control form-control-sm datepicker" name="issue_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <!-- <div class="form-group col-3">
                        <label for="archive_date">Archive Date</label>
                        <input type="text" class="form-control form-control-sm datepicker" name="archive_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div> -->
                     <div class="form-group col-3">
                        <label for="application_start_date">Application Start Date</label>
                        <input type="text" class="form-control form-control-sm datepicker" name="application_start_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <div class="form-group col-3">
                        <label for="application_end_date">Application End Date</label>
                        <input type="text" class="form-control form-control-sm datepicker" name="application_end_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <div class="form-group col-3">
                        <label for="training_start_date">Training Start Date</label>
                        <input type="text" class="form-control form-control-sm datepicker" name="training_start_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <div class="form-group col-3">
                        <label for="training_end_date">Training End Date</label>
                        <input type="text" class="form-control form-control-sm datepicker" name="training_end_date" data-date-format="dd/mm/yyyy" required readonly>
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
