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
            <div class="card-header">Training Details</div>
            <div class="card-body">
               <p style="margin-bottom: 0px;"><b>Title</b> : {{$training->title}}</p>
               <p class="mb-0"><b>Issue No</b> : {{$training->issue_no}}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Issue Date</b> : {{date_format(new DateTime($training->issue_date), 'd-m-Y')}} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Archive Date</b> : {{date_format(new DateTime($training->archive_date), 'd-m-Y')}}</p>

               <?php $attachmentinfo = $training->getAttachementInfo($training->id); ?>

               <?php if($attachmentinfo != '') { ?>
               <p>Attachement: <a href="{{ asset('/upload/'.$attachmentinfo)}}" download="{{ asset('/upload/'.$attachmentinfo)}}"><i class="fa fa-paperclip" aria-hidden="true" style="font-size:20px;"></i></a> </p>
               <?php } ?>

               <p style="margin-bottom: 0px;">Remarks: {{$training->remarks}}</p>
            </div>
            <div class="row justify-content-center" style="margin-top: 5px;">
               <div class="col-md-12">
                  <div class="card">
                     <div class="card-header">Nomination Table </div>
                     <div class="card-body">
                        <form action = "/nomination" method = "POST">
                           {{ csrf_field() }}
                           <input type="text" name="training_id" value="{{$training->id}}" hidden readonly required>
                           <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                              <thead>
                                 <tr>
                                    <th class="th-sm">Sl</th>
                                    <th class="th-sm">Status</th>
                                    <th class="th-sm">Office</th>
                                    <th class="th-sm">ID</th>
                                    <th class="th-sm">Name(Bangla)</th>
                                    <th class="th-sm">Designation(Bangla)</th>
                                    <th class="th-sm">Working place(Bangla)</th>
                                    <th class="th-sm">Contact</th>
                                    <th class="th-sm">Email</th>
                                 </tr>
                              </thead>
                              <?php $i=1; ?>
                              <tbody id="item_list_table_body">
                                 @foreach($nominations as $rowdata)
                                 <tr>
                                    <td>@php echo en2bnNumber($i++); @endphp</td>
                                    @if($training->status != 4)
                                    <td>Nominated</td>
                                    @else
                                    @if($rowdata->status == 1)
                                    <td class="text-success h3"><i class="fa fa-check-square"></i></td>
                                    <!-- <td class="text-success"><i class="fa fa-check"></i></td> -->
                                    <!-- <td class="text-success">Selected</td> -->
                                    @else
                                    <td class="text-danger h3"><i class="fa fa-times-circle"></i></td>
                                    <!-- <td class="text-danger"><i class="fa fa-times"></i></td> -->
                                    <!-- <td class="text-danger">Not Selected</td> -->
                                    @endif
                                    @endif
                                    <td>{{$rowdata->getUserInfo->name}}</td>
                                    <td>@php echo en2bnNumber($rowdata->id_no); @endphp</td>
                                    <td>{{$rowdata->name_bangla}}</td>
                                    <td>{{$rowdata->designation_bangla}}</td>
                                    <td>{{$rowdata->working_place_bangla}}</td>
                                    <td>@php echo en2bnNumber($rowdata->contact_no); @endphp</td>
                                    <td>{{$rowdata->email}}</td>
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
                        <a class="btn btn-secondary" href="/training"><i class="fa fa-arrow-left"></i> Back </a>
                     </div>
                  </div>                  
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
