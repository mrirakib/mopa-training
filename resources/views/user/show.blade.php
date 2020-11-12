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
                     <div class="col-4 text-right">
                        <img src="{{ asset('/img/pp.jpg')}}">
                     </div>
                     <div class="col-8">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td style="width: 20%;">Office</td>
                                    <td>{{$user->name}}</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%;">Office Bangla</td>
                                    <td>{{$user->name_bangla}}</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%;">Section</td>
                                    <td>{{$user->section}}</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%;">Section Bangla</td>
                                    <td>{{$user->section_bangla}}</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%;">Email</td>
                                    <td>{{$user->email}}</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%;">User Type</td>
                                    <td>@if($user->user_type == 2) Admin user @elseif($user->user_type == 3) Normal User @endif</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%;">Status</td>
                                    <td>@if($user->status == 0) <span class="text-warning">Not verified</span> @elseif($user->status == 1) <span class="text-success">Active</span> @elseif($user->status == 2) <span class="text-danger">Inactive</span> @endif</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%;">Create date</td>
                                    <td>{{date_format(new DateTime($user->created_at), 'd-M-Y')}}</td>
                                </tr>
                            </tbody>
                        </table>
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
