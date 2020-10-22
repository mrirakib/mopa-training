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
                <div class="card-header"> User Signatory Information </div>

                <div class="card-body">
                  <div class="row">
                     <div class="col-6 text-right">
                        <img src="{{ asset('/img/pp.jpg')}}">
                     </div>
                     <div class="col-6">
                        <p><b>Name</b> : {{$profile->name}}</p>
                        <p><b>Name(Bangla)</b> : {{$profile->name_bangla}}</p>
                        <p><b>Department</b> : {{$profile->department}}</p>
                        <p><b>Department(Bangla)</b> : {{$profile->department_bangla}}</p>
                        <p><b>Designation</b> : {{$profile->designation}}</p>
                        <p><b>Designation(Bangla)</b> : {{$profile->designation_bangla}}</p>
                        <p><b>Contact no (Official)</b> : {{$profile->contact_no}}</p>
                        <p><b>Email</b> : {{$profile->email}}</p>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12 text-center">
                        <a class="btn btn-secondary" href="/"><i class="fa fa-arrow-left"></i> Back </a>
                     </div>
                  </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
