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
            @if(Session::has('MsgError'))
            <div class="alert alert-danger alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Error!</strong> {{Session::get('MsgError')}}
            </div>
            @endif
            <div class="card-header">Training Types</div>

            <div class="card-body">
               <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                  <thead>
                     <tr>
                        <th class="th-sm">Sl</th>
                        <th class="th-sm">Training Type</th>
                        <th class="th-sm">Status</th>
                        <th class="th-sm" style="width: 18%;">Action</th>
                     </tr>
                  </thead>
                  <?php $i=1; ?>
                  <tbody>
                     @foreach($training_types as $rowdata)
                     <tr>
                        <td>{{$i++}}</td>
                        <td>{{$rowdata->training_type}}</td>
                        <td>@if($rowdata->status == 0) <span class="text-danger">Inactive</span>@elseif($rowdata->status == 1) <span class="text-success">Active</span>@endif</td>
                        <td> 
                           <a class="btn btn-info btn-slim" href="/trainingType/{{$rowdata->id}}/edit"><i class="fa fa-pencil"></i> Edit </a>
                           <a class="btn btn-info btn-slim" href="/trainingType/{{$rowdata->id}}"><i class="fa fa-eye"></i> Show </a>
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
