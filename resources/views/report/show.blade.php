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
            @if(Session::has('Msgerror'))
            <div class="alert alert-danger alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Error!</strong> {{Session::get('Msgerror')}}
            </div>
            @endif
            <div class="card-header">Training Report</div>
            <div class="card-body">
               <div class="row">
                  <div class="col-10">
                     <p style="margin-bottom: 0px;"><b>Search Key</b></p>
                     <p style="margin-bottom: 0px;">@if($id_no != null)<b>Id No</b> : {{$id_no}}&nbsp;&nbsp; @endif @if($name != null)<b>Name</b> : {{$name}}&nbsp;&nbsp; @endif @if($designation != null)<b>Designation</b> : {{$designation}}&nbsp;&nbsp; @endif @if($contact_no != null)<b>Contact No</b> : {{$contact_no}}&nbsp;&nbsp; @endif @if($email != null)<b>Email</b> : {{$email}}&nbsp;&nbsp; @endif</p>
                  </div>
                  <div class="col-1">
                     <form method="POST" target="_blank" action="/training-report-print" name="training-report-print">
                        {{ csrf_field() }}
                        <input type="text" name="id_no" value="{{$id_no}}" hidden>
                        <input type="text" name="name" value="{{$name}}" hidden>
                        <input type="text" name="designation" value="{{$designation}}" hidden>
                        <input type="text" name="contact_no" value="{{$contact_no}}" hidden>
                        <input type="text" name="email" value="{{$email}}" hidden>
                        <button type="submit" class="btn btn-primary"><i class="fa fa-file-pdf-o"></i> Print </button>
                     </form>
                  </div>
                  <div class="col-1">
                     <form method="POST" action="/training-report-export" name="training-report-excel">
                        {{ csrf_field() }}
                        <input type="text" name="id_no" value="{{$id_no}}" hidden>
                        <input type="text" name="name" value="{{$name}}" hidden>
                        <input type="text" name="designation" value="{{$designation}}" hidden>
                        <input type="text" name="contact_no" value="{{$contact_no}}" hidden>
                        <input type="text" name="email" value="{{$email}}" hidden>
                        <button type="submit" class="btn btn-primary"><i class="fa fa-file-excel-o"></i> Excel </button>
                     </form>
                  </div>
               </div>
            </div>
            <div class="row justify-content-center" style="margin-top: 5px;">
               <div class="col-md-12">
                  <div class="card">
                     <!-- <div class="card-header">Report </div> -->
                     <div class="card-body">
                        <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                           <thead>
                              <tr>
                                 <th class="th-sm">ক্র. নং</th>
                                 <th class="th-sm">ট্রেনিয়ের নাম</th>
                                 <th class="th-sm">অফিস</th>
                                 <th class="th-sm">নাম ও পরিচিতি নং</th>
                                 <th class="th-sm">পদবী ও বর্তমান কর্রস্থল</th>
                                 <th class="th-sm">মোবাইল</th>
                                 <th class="th-sm">ই-মেইল</th>
                              </tr>
                           </thead>
                           <?php $i=1; ?>
                           <tbody id="item_list_table_body">
                              @foreach($results as $rowdata)
                              <tr>
                                 <td>@php echo en2bnNumber($i++); @endphp</td>
                                 <td>{{$rowdata->getTrainingInfo->title}}</td>
                                 <td>{{$rowdata->getUserInfo->name}}</td>
                                 <td>{{$rowdata->name_bangla}}(@php echo en2bnNumber($rowdata->id_no); @endphp)</td>
                                 <td>{{$rowdata->designation_bangla}} ({{$rowdata->working_place}})</td>
                                 <td>@php echo en2bnNumber($rowdata->contact_no); @endphp</td>
                                 <td>{{$rowdata->email}}</td>
                              </tr>
                              @endforeach
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col-4">
                        <a class="btn btn-secondary" href="/report"><i class="fa fa-arrow-left"></i> Back </a>
                     </div>
                  </div>                  
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
