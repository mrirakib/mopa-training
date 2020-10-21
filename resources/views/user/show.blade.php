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
                <div class="card-header"> User Information</div>

                <div class="card-body">
                  <div class="row">
                     <div class="col-6 text-right">
                        <img src="{{ asset('/img/pp.jpg')}}">
                     </div>
                     <div class="col-6">
                        <p><b>Name</b> : {{$user->name}}</p>
                        <p><b>Email</b> : {{$user->email}}</p>
                        <p><b>User Type</b> : @if($user->user_type == 2) Admin user @elseif($user->user_type == 3) User @endif</p>
                        <p><b>Status</b> : @if($user->status == 0) <span class="text-warning">Not verified</span> @elseif($user->status == 1) <span class="text-success">Active</span> @elseif($user->status == 2) <span class="text-danger">Inactive</span> @endif</p>
                        <p><b>Create date</b> : {{date_format(new DateTime($user->created_at), 'd-M-Y')}}</p>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12 text-center">
                        <a class="btn btn-secondary" href="/userlist"><i class="fa fa-arrow-left"></i> Back </a>
                     </div>
                  </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
