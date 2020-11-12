@extends('layouts.app')
@section('content')
<style>
   .btn{
      margin-bottom: 5px;
   }
   p span  {
      font-family: sans-serif !important;
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
            <div class="card-header"> Training Govt Order </div>
            <div class="card-body">
               <ul class="nav nav-tabs" id="myTab" role="tablist">
                  @php $i=1; @endphp
                  @foreach($organizations as $rowdata)
                  @if($i == 1)
                     <li class="nav-item">
                        <a class="nav-link active" id="home-{{$rowdata->id}}-tab" data-toggle="tab" href="#home-{{$rowdata->id}}" role="tab" aria-controls="home-{{$rowdata->id}}" aria-selected="true">{{$rowdata->name}}</a>
                     </li>
                  @else
                     <li class="nav-item">
                        <a class="nav-link" id="home-{{$rowdata->id}}-tab" data-toggle="tab" href="#home-{{$rowdata->id}}" role="tab" aria-controls="home-{{$rowdata->id}}" aria-selected="false">{{$rowdata->name}}</a>
                     </li>
                  @endif
                  @php $i=0; @endphp
                  
                  @endforeach
               </ul>
               <div class="tab-content" id="myTabContent">
                  @php $i=1; @endphp
                  @foreach($organizations as $rowdata)
                     @if($i == 1)
                        <div class="tab-pane fade show active" id="home-{{$rowdata->id}}" role="tabpanel" aria-labelledby="home-{{$rowdata->id}}-tab">
                           <ul class="nav nav-tabs" id="myTab" role="tablist">
                              <li class="nav-item">
                                 <a class="nav-link active" id="gobangla{{$rowdata->id}}-tab" data-toggle="tab" href="#gobangla{{$rowdata->id}}" role="tab" aria-controls="gobangla{{$rowdata->id}}" aria-selected="true">GO(Bangla))</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" id="goenglish{{$rowdata->id}}-tab" data-toggle="tab" href="#goenglish{{$rowdata->id}}" role="tab" aria-controls="goenglish{{$rowdata->id}}" aria-selected="false">GO(English)</a>
                              </li>
                           </ul>
                           <div class="tab-content" id="myTabContent">
                              <div class="tab-pane fade show active" id="gobangla{{$rowdata->id}}" role="tabpanel" aria-labelledby="gobangla{{$rowdata->id}}-tab">
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
                                       @foreach($trainings[$rowdata->id] as $rowdata2)
                                       <tr>
                                          <td>{{$i++}}</td>
                                          <td style="font-family: sans-serif !important;">@php echo $rowdata2->goInformation->subject; @endphp</td>
                                          <td>{{date_format(new DateTime($rowdata2->goInformation->publish_date), 'd-m-Y')}}</td>
                                          <td>
                                             <a class="btn btn-info btn-slim" href="/training/{{$rowdata2->id}}"><i class="fa fa-pencil"></i> View </a>
                                             <a class="btn btn-primary btn-slim" href="/candidate-list-export/{{$rowdata2->id}}"><i class="fa fa-pencil"></i> Excel </a>
                                             <a class="btn btn-success btn-slim" href="/training-govt-order/{{$rowdata2->id}}" target="_blank"><i class="fa fa-pencil"></i> GO </a>
                                          </td>
                                       </tr>
                                       @endforeach
                                    </tbody>
                                 </table>
                              </div>
                              <div class="tab-pane fade" id="goenglish{{$rowdata->id}}" role="tabpanel" aria-labelledby="goenglish{{$rowdata->id}}-tab">
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
                                       @foreach($english_trainings[$rowdata->id] as $rowdata2)
                                       <tr>
                                          <td>{{$i++}}</td>
                                          <td>@php echo $rowdata2->goInformation->subject @endphp</td>
                                          <td>{{date_format(new DateTime($rowdata2->goInformation->publish_date), 'd-m-Y')}}</td>
                                          <td>
                                             <a class="btn btn-info btn-slim" href="/training/{{$rowdata2->id}}"><i class="fa fa-pencil"></i> View </a>
                                             <a class="btn btn-primary btn-slim" href="/candidate-list-export/{{$rowdata2->id}}"><i class="fa fa-pencil"></i> Excel </a>
                                             <a class="btn btn-success btn-slim" href="/training-govt-order-english/{{$rowdata2->id}}" target="_blank"><i class="fa fa-pencil"></i> GO </a>
                                          </td>
                                       </tr>
                                       @endforeach
                                    </tbody>
                                 </table>
                              </div>
                           </div>
                        </div>
                     @else
                        <div class="tab-pane fade" id="home-{{$rowdata->id}}" role="tabpanel" aria-labelledby="home-{{$rowdata->id}}-tab">
                           <ul class="nav nav-tabs" id="myTab" role="tablist">
                              <li class="nav-item">
                                 <a class="nav-link active" id="gobangla{{$rowdata->id}}-tab" data-toggle="tab" href="#gobangla{{$rowdata->id}}" role="tab" aria-controls="gobangla{{$rowdata->id}}" aria-selected="true">GO(Bangla))</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" id="goenglish{{$rowdata->id}}-tab" data-toggle="tab" href="#goenglish{{$rowdata->id}}" role="tab" aria-controls="goenglish{{$rowdata->id}}" aria-selected="false">GO(English)</a>
                              </li>
                           </ul>
                           <div class="tab-content" id="myTabContent">
                              <div class="tab-pane fade show active" id="gobangla{{$rowdata->id}}" role="tabpanel" aria-labelledby="gobangla{{$rowdata->id}}-tab">
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
                                       @foreach($trainings[$rowdata->id] as $rowdata2)
                                       <tr>
                                          <td>{{$i++}}</td>
                                          <td style="font-family: sans-serif !important;">@php echo $rowdata2->goInformation->subject; @endphp</td>
                                          <td>{{date_format(new DateTime($rowdata2->goInformation->publish_date), 'd-m-Y')}}</td>
                                          <td>
                                             <a class="btn btn-info btn-slim" href="/training/{{$rowdata2->id}}"><i class="fa fa-pencil"></i> View </a>
                                             <a class="btn btn-primary btn-slim" href="/candidate-list-export/{{$rowdata2->id}}"><i class="fa fa-pencil"></i> Excel </a>
                                             <a class="btn btn-success btn-slim" href="/training-govt-order/{{$rowdata2->id}}" target="_blank"><i class="fa fa-pencil"></i> GO </a>
                                          </td>
                                       </tr>
                                       @endforeach
                                    </tbody>
                                 </table>
                              </div>
                              <div class="tab-pane fade" id="goenglish{{$rowdata->id}}" role="tabpanel" aria-labelledby="goenglish{{$rowdata->id}}-tab">
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
                                       @foreach($english_trainings[$rowdata->id] as $rowdata2)
                                       <tr>
                                          <td>{{$i++}}</td>
                                          <td>@php echo $rowdata2->goInformation->subject @endphp</td>
                                          <td>{{date_format(new DateTime($rowdata2->goInformation->publish_date), 'd-m-Y')}}</td>
                                          <td>
                                             <a class="btn btn-info btn-slim" href="/training/{{$rowdata2->id}}"><i class="fa fa-pencil"></i> View </a>
                                             <a class="btn btn-primary btn-slim" href="/candidate-list-export/{{$rowdata2->id}}"><i class="fa fa-pencil"></i> Excel </a>
                                             <a class="btn btn-success btn-slim" href="/training-govt-order-english/{{$rowdata2->id}}" target="_blank"><i class="fa fa-pencil"></i> GO </a>
                                          </td>
                                       </tr>
                                       @endforeach
                                    </tbody>
                                 </table>
                              </div>
                           </div>
                        </div>
                     @endif
                     @php $i=0; @endphp
                  @endforeach
               </div>               
            </div>
         </div>
      </div>
   </div>
</div>
@endsection