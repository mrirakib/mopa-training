@extends('layouts.app')
@section('content')
<div class="container">
   <div class="row justify-content-center">
      <div class="col-md-12">
         <div class="card">
            <div class="card-header"> Publish Training </div>
            <div class="card-body">
               <form name="training-create" action="/training" method ="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="row">
                     <div class="col-12">
                        <?php
                           $residenceList = array("", "Residence", "Non-Residence");
                           $attaindanceList = array("", "Conventional", "Online", "Mixed");
                        ?>
                        <p style="margin: 0px;"><strong>Course name :</strong> {{$trainingCalender->title}}</p>
                        <a href="#demo" class="btn btn-info" data-toggle="collapse">Details</a>
                        <div id="demo" class="collapse" style="background-color: #B1BFDB; padding: 15px;">
                           <p style="margin: 0px;"><strong>Organization name :</strong> {{$trainingCalender->getOrganizationInfo->name}}</p>
                           <p style="margin: 0px;"><strong>Financial year : </strong>{{$trainingCalender->financial_year}}</p>
                           <p style="margin: 0px;"><strong>Residence type : </strong>{{$residenceList[$trainingCalender->residence_type_id]}}</p>
                           <p style="margin: 0px;"><strong>Attaindence type : </strong>{{$attaindanceList[$trainingCalender->attaindance_type_id]}}</p>
                           <p style="margin: 0px;"><strong>Number of Trainee : </strong>{{$trainingCalender->trainee_number}}</p>
                           <p style="margin: 0px;"><strong>Trainee Level : </strong>{{$trainingCalender->trainee_level}}</p>
                           <p style="margin: 0px;"><strong>Application Date :</strong> From {{date_format(new DateTime($trainingCalender->application_start_date), 'd-m-Y')}} to {{date_format(new DateTime($trainingCalender->application_end_date), 'd-m-Y')}}</p>
                           <p style="margin: 0px;"><strong>Training Date : </strong> From {{date_format(new DateTime($trainingCalender->training_start_date), 'd-m-Y')}} to {{date_format(new DateTime($trainingCalender->training_end_date), 'd-m-Y')}}</p>
                        </div>
                     </div>
                     <div class="form-group col-12">
                        <label for="title">Title</label>
                        <textarea type="text" class="form-control form-control-sm" name="title" rows="1" required></textarea>
                     </div>
                     <input type="hidden" name="training_calender_id" value="{{$trainingCalender->id}}" class="form-control form-control-sm">
                     <input type="hidden" name="organization_id" value="{{$trainingCalender->organization_id}}" class="form-control form-control-sm">
                     <div class="form-group col-3">
                        <label for="issue_no">Issue No</label>
                        <input type="text" class="form-control form-control-sm" name="issue_no" required>
                     </div>
                     <div class="form-group col-3">
                        <label for="issue_date">Issue Date</label>
                        <input type="text" class="form-control form-control-sm datepicker" name="issue_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <div class="form-group col-3">
                        <label for="application_start_date">Application Start Date</label>
                        <input type="text" value="{{date_format(new DateTime($trainingCalender->application_start_date), 'd-m-Y')}}" class="form-control form-control-sm datepicker" name="application_start_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <div class="form-group col-3">
                        <label for="application_end_date">Application End Date</label>
                        <input type="text" value="{{date_format(new DateTime($trainingCalender->application_end_date), 'd-m-Y')}}" class="form-control form-control-sm datepicker" name="application_end_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <div class="form-group col-3">
                        <label for="training_start_date">Training Start Date</label>
                        <input type="text" value="{{date_format(new DateTime($trainingCalender->training_start_date), 'd-m-Y')}}" class="form-control form-control-sm datepicker" name="training_start_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <div class="form-group col-3">
                        <label for="training_end_date">Training End Date</label>
                        <input type="text" value="{{date_format(new DateTime($trainingCalender->training_end_date), 'd-m-Y')}}" class="form-control form-control-sm datepicker" name="training_end_date" data-date-format="dd/mm/yyyy" required readonly>
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
