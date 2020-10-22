@extends('layouts.app')


@section('content')

<div class="container">
   <div class="row justify-content-center">
      <div class="col-md-12">
         <div class="card">
            <div class="card-header"> GO Information Setting </div>
            <div class="card-body">
               <form name="goInformation-create" action="/goInformationTemplate" method ="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="row">
                     <div class="form-group col-4">
                        <label for="publish_date">Publish Date</label>
                        <input type="text" class="form-control datepicker" name="publish_date" data-date-format="dd/mm/yyyy" required readonly>
                     </div>
                     <div class="form-group col-12">
                        <label for="subject">Subject</label>
                        <textarea type="text" class="form-control mytextarea" name="subject" rows="1" ></textarea>
                     </div>
                     <div class="form-group col-12">
                        <label for="details">Details</label>
                        <textarea type="text" class="form-control mytextarea" name="details" rows="1" ></textarea>
                     </div>
                     <div class="form-group col-12">
                        <label for="rules_regulations">Rules & Regulations</label>
                        <textarea type="text" class="form-control mytextarea" name="rules_regulations" rows="1" ></textarea>
                     </div>
                     <div class="form-group col-12">
                        <label for="before_kind_information">Training Institute Information</label>
                        <textarea type="text" id="" class="form-control mytextarea" name="before_kind_information" rows="1"></textarea>
                     </div>
                     <div class="form-group col-12">
                        <label for="kind_information">Kind Information</label>
                        <textarea type="text" class="form-control mytextarea" name="kind_information" rows="1" ></textarea>
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
