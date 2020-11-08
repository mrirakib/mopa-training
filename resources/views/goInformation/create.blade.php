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
            <div class="card-header"> GO Information Setting (Bangla) </div>
            <div class="card-body">
               <form name="goInformation-update" action="/goInformation" method ="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="row">
                  @php
                     $bn = new BanglaDate(time(), 0);
                     $bdt = $bn->get_date();

                     $text = sprintf( implode( ' ',  $bdt ) );

                     $text2 = en2bnDate(date("j F Y"));
                  @endphp

                     <div class="form-group col-3">
                        <input type="text" name="training_id" value="{{$training_id}}" hidden>
                        <label for="go_number">GO Number</label>
                        <input type="text" class="form-control" name="go_number" data-date-format="dd/mm/yyyy" value="" required>
                     </div>
                     <div class="form-group col-3">
                        <label for="publish_date">Publish Date</label>
                        <input type="text" class="form-control datepicker" name="publish_date" data-date-format="dd/mm/yyyy" value="{{date('d-m-Y')}}" required readonly>
                     </div>
                     <div class="form-group col-3">
                        <label for="publish_date_bangla">Publish Date(@php echo $text @endphp)</label>
                        <input type="text" class="form-control" name="publish_date_bangla" data-date-format="dd/mm/yyyy" value="{{$text}}" required>
                     </div>
                     <div class="form-group col-3">
                        <label for="publish_date_english">Publish Date(@php echo $text2 @endphp)</label>
                        <input type="text" class="form-control" name="publish_date_english" data-date-format="dd/mm/yyyy" value="{{$text2}}" required>
                     </div>
                     <div class="form-group col-12">
                        <label for="subject">Subject</label>
                        <textarea type="text" class="form-control mytextarea" name="subject" rows="1" >{{$goInformation->subject}}</textarea>
                     </div>
                     <div class="form-group col-12">
                        <label for="details">Details</label>
                        <textarea type="text" class="form-control mytextarea" name="details" rows="1" >{{$goInformation->details}}</textarea>
                     </div>
                     <div class="form-group col-12">
                        <label for="rules_regulations">Rules & Regulations</label>
                        <textarea type="text" class="form-control mytextarea" name="rules_regulations" rows="1" >{{$goInformation->rules_regulations}}</textarea>
                     </div>
                     <div class="form-group col-12">
                        <label for="before_kind_information">Training Institute Information</label>
                        <textarea type="text" id="" class="form-control mytextarea" name="before_kind_information" rows="1">{{$goInformation->before_kind_information}}</textarea>
                     </div>
                     <div class="form-group col-12">
                        <label for="kind_information">Kind Information</label>
                        <textarea type="text" class="form-control mytextarea" name="kind_information" rows="1" >{{$goInformation->kind_information}}</textarea>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-3">
                        <button type="submit" class="btn btn-primary">Update</button>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
