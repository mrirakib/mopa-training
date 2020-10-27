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
               <p style="margin-bottom: 0px;"><b>Title</b> : </p>
               <p class="mb-0"><b>Issue No</b> : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Issue Date</b> :  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Archive Date</b> : </p>

               

               <p style="margin-bottom: 0px;">Remarks: </p>
            </div>
            <div class="row justify-content-center" style="margin-top: 5px;">
               <div class="col-md-12">
                  <div class="card">
                     <div class="card-header">Nomination Table </div>
                     <div class="card-body">
                        <form action = "/nomination" method = "POST">
                           {{ csrf_field() }}
                           <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                              <thead>
                                 <tr>
                                    <th class="th-sm">Sl</th>
                                    <th class="th-sm">Office</th>
                                    <th class="th-sm">ID</th>
                                    <th class="th-sm">Name</th>
                                    <th class="th-sm">Name(Bangla)</th>
                                    <th class="th-sm">Designation</th>
                                    <th class="th-sm">Designation(Bangla)</th>
                                    <th class="th-sm">Contact</th>
                                    <th class="th-sm">Email</th>
                                    <th class="th-sm">Working place</th>
                                 </tr>
                              </thead>
                              <?php $i=1; ?>
                              <tbody id="item_list_table_body">
                                 @foreach($results as $rowdata)
                                 <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$rowdata->getUserInfo->name}}</td>
                                    <td>{{$rowdata->id_no}}</td>
                                    <td>{{$rowdata->name}}</td>
                                    <td>{{$rowdata->name_bangla}}</td>
                                    <td>{{$rowdata->designation}}</td>
                                    <td>{{$rowdata->designation_bangla}}</td>
                                    <td>{{$rowdata->contact_no}}</td>
                                    <td>{{$rowdata->email}}</td>
                                    <td>{{$rowdata->working_place}}</td>
                                 </tr>
                                 @endforeach
                              </tbody>
                           </table>
                           <!-- <button type="submit" class="btn btn-primary">Submit</button> -->
                        </form>
                     </div>
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col-4">
                        <a class="btn btn-secondary" href="/"><i class="fa fa-arrow-left"></i> Back </a>
                     </div>
                  </div>                  
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
