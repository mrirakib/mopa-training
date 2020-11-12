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
            <div class="card-header">Organization Information</div>
            <div class="card-body">
               <div class="row">
                  <div class="col-2"></div>
                  <div class="col-8">
                     <table class="table">
                        <tr>
                           <td class="w-25">Organization Name</td>
                           <td>{{$organization->name}}</td>
                        </tr>
                        <tr>
                           <td>Organization Name Bangla</td>
                           <td>{{$organization->name_bangla}}</td>
                        </tr>
                        <tr>
                           <td>Contact No</td>
                           <td>{{$organization->contact_no}}</td>
                        </tr>
                        <tr>
                           <td>Email</td>
                           <td>{{$organization->email}}</td>
                        </tr>
                        <tr>
                           <td>Create date</td>
                           <td>{{date_format(new DateTime($organization->created_at), 'd-m-Y')}}</td>
                        </tr>
                     </table>
                  </div>
               </div>
            </div>
            <div class="card-body">
               <div class="row">
                  <div class="col-12 text-center">
                     <a class="btn btn-secondary" href="/organization"><i class="fa fa-arrow-left"></i> Back </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
