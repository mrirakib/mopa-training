@extends('layouts.app')

@section('content')
<style>
   .btn{
      margin-bottom: 5px;
   }
</style>
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
            <div class="card-header">User and Training Institute Mapping List</div>

            <div class="card-body">
               <table id="dtBasicExample" class="table table-striped table-bordered table-sm table" cellspacing="0" width="100%">
                  <thead>
                     <tr>
                        <th class="th-sm">Sl</th>
                        <th class="th-sm">User</th>
                        <th class="th-sm">Training Institute</th>
                        <th class="th-sm">Action</th>
                     </tr>
                  </thead>
                  <?php $i=1; ?>
                  <tbody>
                     @foreach($userInstitutes as $rowdata)
                     <tr>
                        <td>{{$i++}}</td>
                        <td>{{$rowdata->getUserInfo->name}}</td>
                        <td>{{$rowdata->getOrganizationInfo->name}}</td>
                        <td> <a class="btn btn-info btn-slim" href="/userInstitute/{{$rowdata->id}}/edit"><i class="fa fa-eye"></i> Edit </a></td>
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
