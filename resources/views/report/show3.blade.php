@extends('layouts.app')
@section('content')
<style>
   p span  {
      font-family: sans-serif !important;
      background: transparent !important;
      margin-bottom: 0px;
   }
   p{
      margin-bottom: 0px;
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
            <div class="card-header">Training Report</div>
            <div class="card-body">
               <div class="row">
                  <div class="col-10">
                     <p style="margin-bottom: 0px;"><b>User: {{Auth::user()->name}} ({{Auth::user()->section}}) &nbsp;&nbsp;&nbsp; User Type: @if(isSuperAdmin()) Super Admin @elseif(isAdmin()) Admin User @else Normal User @endif</b></p>
                     <p style="margin-bottom: 0px;"><b>Search Key</b></p>
                     <p><b>Organization</b> : {{$organization}} &nbsp; &nbsp; &nbsp; <b>Report Type</b> : {{$report_type_text}}</p>
                     @if($go_info_id != null)<p><b>Training GO Title</b> : @php echo $go_info->subject; @endphp </p> @endif
                  </div>
                  <div class="col-1">
                     <form method="POST" target="_blank" action="/training-report-print2" name="training-report-print">
                        {{ csrf_field() }}
                        <input type="text" name="organization_id" value="{{$organization_id}}" hidden>
                        <input type="text" name="go_info_id" value="{{$go_info_id}}" hidden>
                        <input type="text" name="report_type" value="{{$report_type}}" hidden>
                        <button type="submit" class="btn btn-primary"><i class="fa fa-file-pdf-o"></i> Print </button>
                     </form>
                  </div>
                  <!-- <div class="col-1">
                     <form method="POST" action="/training-report-export2" name="training-report-excel">
                        {{ csrf_field() }}
                        <input type="text" name="organization_id" value="{{$organization_id}}" hidden>
                        <input type="text" name="go_info_id" value="{{$go_info_id}}" hidden>
                        <input type="text" name="report_type" value="{{$report_type}}" hidden>
                        <button type="submit" class="btn btn-primary"><i class="fa fa-file-excel-o"></i> Excel </button>
                     </form>
                  </div> -->
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
                                 <th class="th-sm">মোট</th>
                              </tr>
                           </thead>
                           <?php $i=1; $total = 0; ?>
                           <tbody id="item_list_table_body">
                              @foreach($results as $rowdata)
                              <tr>
                                 <td>@php echo en2bnNumber($i++); @endphp</td>
                                 <td>@php echo $rowdata->getGOInfo($rowdata->training_id); @endphp</td>
                                 <td>@php echo en2bnNumber($rowdata->total); @endphp</td>
                              </tr>
                              @php $total += $rowdata->total; @endphp
                              @endforeach
                              <tr>
                                 <td></td>
                                 <td style="text-align: right;">মোটঃ</td>
                                 <td>@php echo en2bnNumber($total); @endphp</td>
                              </tr>
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
                        <a class="btn btn-secondary" href="/report2"><i class="fa fa-arrow-left"></i> Back </a>
                     </div>
                  </div>                  
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
