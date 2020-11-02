@extends('layouts.app')

@section('content')
<div class="container">
   <div class="row justify-content-center">
      <div class="col-md-12">
         <div class="card">
            @if(Session::has('MesError'))
            <div class="alert alert-danger alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Error!</strong> {{Session::get('MesError')}}
            </div>
            @endif
            <div class="card-header">User List<a class="btn btn-primary float-right" href="{{ route('register') }}">Create New User</a></div>

            <div class="card-body">
               <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                  <thead>
                     <tr>
                        <th class="th-sm">Sl</th>
                        <th class="th-sm">Name</th>
                        @if(Auth::user()->user_type == 1)
                        <th class="th-sm">Type</th>
                        @endif
                        <th class="th-sm">Email</th>
                        <th class="th-sm">Status</th>
                        <th class="th-sm">Action</th>
                     </tr>
                  </thead>
                  <?php $i=1; ?>
                  <tbody>
                     @foreach($users as $rowdata)
                     <tr>
                        <td>{{$i++}}</td>
                        <td>{{$rowdata->name}}</td>
                        @if(Auth::user()->user_type == 1)
                        <td>@if($rowdata->user_type == 2) Admin @elseif($rowdata->user_type == 3) User @endif</td>
                        @endif
                        <td>{{$rowdata->email}}</td>
                        @if($rowdata->status == 1)
                        <td class="text-success">Active</td>
                        @elseif($rowdata->status == 2)
                        <td class="text-danger">Inactive</td>
                        @else
                        <td class="text-warning">Other</td>
                        @endif
                        <td> 
                           <a class="btn btn-primary btn-slim" href="/userlist/{{$rowdata->id}}/edit"><i class="fa fa-pencil"></i> Edit </a>
                           <a class="btn btn-info btn-slim" href="/userlist/{{$rowdata->id}}"><i class="fa fa-eye"></i> View </a>
                           <a class="btn btn-success btn-slim" href="/reset-password/{{$rowdata->id}}"><i class="fa fa-cogs"></i> Reset Password </a>
                        </td>
                     </tr>
                     @endforeach
                  </tbody>
               </table>
            </div>
         </div>
      </div>
   </div>
</div>
@endsection
