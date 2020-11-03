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
            <div class="card-header">Training Type Information</div>
            <div class="card-body">
               <div class="row">
                  <div class="col-12">                     
                     <p><b>Training Type</b> : {{$trainingType->name}}</p>
                     <p><b>Created By</b> : {{$trainingType->getUserInfo->name}}</p>
                     <p><b>Create date</b> : {{date_format(new DateTime($trainingType->created_at), 'd-m-Y')}}</p>
                  </div>
               </div>
            </div>
            <div class="card-body">
               <div class="row">
                  <div class="col-4">
                     <a class="btn btn-secondary" href="/trainingType"><i class="fa fa-arrow-left"></i> Back </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
