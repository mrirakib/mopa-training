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
            <div class="card-header"> Training GO </div>
            <div class="card-body">
               <ul class="nav nav-tabs" id="myTab" role="tablist">
                  <li class="nav-item">
                     <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">GO(Bangla)</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">GO(English)</a>
                  </li>
               </ul>
               <div class="tab-content" id="myTabContent">
                  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                     <table id="" class="table table-striped table-bordered table-sm table display" cellspacing="0" width="100%">
                        <thead>
                           <tr>
                              <th class="th-sm">Sl</th>
                              <th class="th-sm" style="width: 70%;">Subject</th>
                              <th class="th-sm" style="width: 10%;">Publish Date</th>
                              <th class="th-sm">Action</th>
                           </tr>
                        </thead>
                        <?php $i=1; ?>
                        <tbody class="go-table">
                           @foreach($trainings as $rowdata)
                           <tr>
                              <td>{{$i++}}</td>
                              <td>@php echo $rowdata->goInformation->subject @endphp</td>
                              <td>{{date_format(new DateTime($rowdata->goInformation->publish_date), 'd-m-Y')}}</td>
                              <td>
                                 <a class="btn btn-info btn-slim" href="/training/{{$rowdata->id}}"><i class="fa fa-pencil"></i> View </a>
                                 <a class="btn btn-primary btn-slim" href="/candidate-list-export/{{$rowdata->id}}"><i class="fa fa-pencil"></i> Excel </a>
                                 <a class="btn btn-success btn-slim" href="/training-govt-order/{{$rowdata->id}}" target="_blank"><i class="fa fa-pencil"></i> GO </a>
                              </td>
                           </tr>
                           @endforeach                     
                        </tbody>
                     </table>
                  </div>
                  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                     <table id="" class="table table-striped table-bordered table-sm table display" cellspacing="0" width="100%">
                        <thead>
                           <tr>
                              <th class="th-sm">Sl</th>
                              <th class="th-sm" style="width: 70%;">Subject</th>
                              <th class="th-sm" style="width: 10%;">Publish Date</th>
                              <th class="th-sm">Action</th>
                           </tr>
                        </thead>
                        <?php $i=1; ?>
                        <tbody class="go-table">
                           @foreach($english_trainings as $rowdata)
                           <tr>
                              <td>{{$i++}}</td>
                              <td>@php echo $rowdata->goInformation->subject @endphp</td>
                              <td>{{date_format(new DateTime($rowdata->goInformation->publish_date), 'd-m-Y')}}</td>
                              <td>
                                 <a class="btn btn-info btn-slim" href="/training/{{$rowdata->id}}"><i class="fa fa-pencil"></i> View </a>
                                 <a class="btn btn-primary btn-slim" href="/candidate-list-export/{{$rowdata->id}}"><i class="fa fa-pencil"></i> Excel </a>
                                 <a class="btn btn-success btn-slim" href="/training-govt-order-english/{{$rowdata->id}}" target="_blank"><i class="fa fa-pencil"></i> GO </a>
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
   </div>
</div>
@endsection