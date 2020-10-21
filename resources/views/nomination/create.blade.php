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
            <div class="card-header">Add Nominations </div>
            <div class="card-body">
               <p class="mb-0"><b>Title</b> : {{$training->title}}</p>
               <p class="mb-0"><b>Issue No</b> : {{$training->issue_no}}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Issue Date</b> : {{date_format(new DateTime($training->issue_date), 'd-m-Y')}} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Archive Date</b> : {{date_format(new DateTime($training->archive_date), 'd-m-Y')}}</p>

               <?php $attachmentinfo = $training->getAttachementInfo($training->id); ?>

               <?php if($attachmentinfo != '') { ?>
               <p class="mb-0">Attachement: <a href="{{ asset('/upload/'.$attachmentinfo)}}" download="{{ asset('/upload/'.$attachmentinfo)}}"><i class="fa fa-paperclip" aria-hidden="true" style="font-size:20px;"></i></a> </p>
               <?php } ?>

               <p class="mb-0"><b>Remarks</b> : {{$training->remarks}}</p>
            </div>
            <div class="card-body pt-0">
               <div class="row">
                  <div class="form-group col-2">
                     <label class="required" for="id_no_1">ID</label>
                     <input type="number" min="0" max="8" class="form-control" id="id_no_1" name="id_no_1" required>
                  </div>
               </div>
               <div class="row">
                  <div class="form-group col-6">
                     <label class="required" for="name_1">Name</label>
                     <input type="text" class="form-control" id="name_1" name="name_1" required>
                  </div>
                  <div class="form-group col-6">
                     <label class="required" for="name_bangla_1">Name(Bangla)</label>
                     <input type="text" class="form-control" id="name_bangla_1" name="name_bangla_1" required>
                  </div>
                  <div class="form-group col-6">
                     <label class="required" for="designation_1">Designation</label>
                     <input type="text" min="0" class="form-control" id="designation_1" name="designation_1" required>
                  </div>
                  <div class="form-group col-6">
                     <label class="required" for="designation_bangla_1">Designation(Bangla)</label>
                     <input type="text" min="0" class="form-control" id="designation_bangla_1" name="designation_bangla_1" required>
                  </div>
                  <div class="form-group col-3">
                     <label class="required" for="contact_no_1">Contact No</label>
                     <input type="text" min="0" class="form-control" id="contact_no_1" name="contact_no_1" required>
                  </div>
                  <div class="form-group col-3">
                     <label class="required" for="email_1">Email</label>
                     <input type="email" class="form-control" id="email_1" name="email_1" required>
                  </div>
                  <div class="form-group col-6">
                     <label class="required" for="working_place_1">Current Working Place</label>
                     <input type="text" min="0" class="form-control" id="working_place_1" name="working_place_1" required>
                  </div>
               </div>
               <div class="row">
                  <div class="col-12">
                     <div><a onclick="addNomination()" class="btn btn-primary"><i class="fa fa-plus"></i> Add to List</a></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="row justify-content-center" style="margin-top: 5px;">
      <div class="col-md-12">
         <div class="card">
            <div class="card-header">Nomination Table </div>
            <div class="card-body table-responsive">
               <form action = "/nomination" method = "POST">
                  {{ csrf_field() }}
                  <input type="text" name="training_id" value="{{$training->id}}" hidden readonly required>
                  <table id="" class="table table-striped table-bordered table-sm " cellspacing="0" width="100%">
                     <thead>
                        <tr>
                           <th class="th-sm">Sl</th>
                           <th class="th-sm">ID</th>
                           <th class="th-sm">Name</th>
                           <th class="th-sm">Name(Bangla)</th>
                           <th class="th-sm">Designation</th>
                           <th class="th-sm">Designation(Bangla)</th>
                           <th class="th-sm">Contact</th>
                           <th class="th-sm">Email</th>
                           <th class="th-sm">Working place</th>
                           <th class="th-sm">Action</th>
                        </tr>
                     </thead>
                     <tbody id="item_list_table_body">
                        <?php $i=1; ?>
                        @foreach($nominations as $rowdata)
                        <tr>
                           <td>{{$i++}}</td>
                           <td>
                              <input type="text" class="form-control" name="id_no[]" value="{{$rowdata->id_no}}" required readonly hidden>
                              {{$rowdata->id_no}}
                           </td>
                           <td>
                              <input type="text" class="form-control" name="name[]" value="{{$rowdata->name}}" required readonly hidden>
                              {{$rowdata->name}}
                           </td>
                           <td>
                              <input type="text" class="form-control" name="name_bangla[]" value="{{$rowdata->name_bangla}}" required readonly hidden>
                              {{$rowdata->name_bangla}}
                           </td>
                           <td>
                              <input type="text" class="form-control" name="designation[]" value="{{$rowdata->designation}}" required readonly hidden>
                              {{$rowdata->designation}}
                           </td>
                           <td>
                              <input type="text" class="form-control" name="designation_bangla[]" value="{{$rowdata->designation_bangla}}" required readonly hidden>
                              {{$rowdata->designation_bangla}}
                           </td>
                           <td>
                              <input type="text" class="form-control" name="contact_no[]" value="{{$rowdata->contact_no}}" required readonly hidden>
                              {{$rowdata->contact_no}}
                           </td>
                           <td>
                              <input type="text" class="form-control" name="email[]" value="{{$rowdata->email}}" required readonly hidden>
                              {{$rowdata->email}}
                           </td>
                           <td>
                              <input type="text" class="form-control" name="working_place[]" value="{{$rowdata->working_place}}" required readonly hidden>
                              {{$rowdata->working_place}}
                           </td>
                           <td>
                              <a onclick="deleteRow(this);" class="btn btn-danger">Delete</a>
                           </td>
                        </tr>
                        @endforeach
                     </tbody>
                  </table>
                  <button type="submit" class="btn btn-primary">Submit</button>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
<script>
   function addNomination() {
      var id_no_1 = document.getElementsByName("id_no_1")[0].value;
      var name_1 = document.getElementsByName("name_1")[0].value;
      var name_bangla_1 = document.getElementsByName("name_bangla_1")[0].value;
      var designation_1 = document.getElementsByName("designation_1")[0].value;
      var designation_bangla_1 = document.getElementsByName("designation_bangla_1")[0].value;
      var contact_no_1 = document.getElementsByName("contact_no_1")[0].value;
      var email_1 = document.getElementsByName("email_1")[0].value;
      var working_place_1 = document.getElementsByName("working_place_1")[0].value;

      if(id_no_1 == ''){
         alert('ID Number should not be empty.');
         exit();
      }
      if(!$.isNumeric(id_no_1) || id_no_1 < 0 || id_no_1.length > 8){
         alert('Input a valid id number');
         $("#id_no_1").focus();
         exit();
      }
      if(name_1 == ''){
         alert('Name field should not be empty.');
         $("#name_1").focus();
         exit();
      }
      if(name_bangla_1 == ''){
         alert('Name (Bangla) field should not be empty.');
         $("#name_bangla_1").focus();
         exit();
      }
      if(designation_1 == ''){
         alert('Designation field should not be empty.');
         $("#designation_1").focus();
         exit();
      }
      if(designation_bangla_1 == ''){
         alert('Designation (Bangla) field should not be empty.');
         $("#designation_bangla_1").focus();
         exit();
      }
      if(contact_no_1 == ''){
         alert('Contact should not be empty.');
         $("#contact_no_1").focus();
         exit();
      }
      if(!IsPhoneNumber(contact_no_1)){
         alert(' Please input a valid Contact number.');
         $("#contact_no_1").focus();
         exit();
      }
      if(email_1 == ''){
         alert('Email field should not be empty.');
         $("#email_1").focus();
         exit();
      }
      if(!IsEmail(email_1)){
         alert('Please input valid Email.');
         $("#email_1").focus();
         exit();
      }
      if(working_place_1 == ''){
         alert('Working place should not be empty.');
         $("#working_place_1").focus();
         exit();
      }

      
      // var transfer_history_id = $("input[name='transfer_history_id[]']")
      //       .map(function(){return $(this).val();}).get();
      var id_nos = $("input[name='id_no[]']")
            .map(function(){return $(this).val();}).get();

      var status = 0;
      for (i = 0; i < id_nos.length; i++) {
         if(id_nos[i] == id_no_1) {
            status = 1;
         }
      }
      if(status)
      {
         alert("This ID already exit in list. Try for others");
         document.getElementByName("id_no_1").focus();
         exit;
      } 

      $(".odd").remove();

      var rowCount = $('#dtBasicExample tbody tr').length;
      var rowCount2 = $('#dtBasicExample tbody tr.odd').length;
      rowCount = rowCount-rowCount2+1;


      $('#item_list_table_body').append('<tr><td>'+rowCount+'</td><td><input type="text" class="form-control" name="id_no[]" value="'+id_no_1+'" required readonly hidden>'+id_no_1+'</td><td><input type="text" class="form-control" name="name[]" value="'+name_1+'" required readonly hidden>'+name_1+'</td><td><input type="text" class="form-control" name="name_bangla[]" value="'+name_bangla_1+'" required readonly hidden>'+name_bangla_1+'</td><td><input type="text" class="form-control" name="designation[]" value="'+designation_1+'" required readonly hidden>'+designation_1+'</td><td><input type="text" class="form-control" name="designation_bangla[]" value="'+designation_bangla_1+'" required readonly hidden>'+designation_bangla_1+'</td><td><input type="text" class="form-control" name="contact_no[]" value="'+contact_no_1+'" required readonly hidden>'+contact_no_1+'</td><td><input type="text" class="form-control" name="email[]" value="'+email_1+'" required readonly hidden>'+email_1+'</td><td><input type="text" class="form-control" name="working_place[]" value="'+working_place_1+'" required readonly hidden>'+working_place_1+'</td><td> <a onclick="deleteRow(this);" class="btn btn-danger">Delete</a></td></tr>');

      $("#id_no_1").val(null);
      $("#name_1").val(null);
      $("#name_bangla_1").val(null);
      $("#designation_1").val(null);
      $("#designation_bangla_1").val(null);
      $("#contact_no_1").val(null);
      $("#email_1").val(null);
      $("#working_place_1").val(null);
   }

   function deleteRow(obj, withoutSL) {
      var rowToDelete = obj.parentNode.parentNode;
      var parentTbody = rowToDelete.parentNode;
      jQuery(rowToDelete).remove();

      if (!withoutSL) {
         var trHolder = parentTbody.getElementsByTagName("tr");
         for (var i = 0; i < trHolder.length; i++) {
            trHolder[i].getElementsByTagName("td")[0].innerHTML = i + 1;
         }
      }
         
   }
</script>
@endsection
