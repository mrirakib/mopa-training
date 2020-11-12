@extends('layouts.app')


@section('content')

<div class="container">
   <div class="row justify-content-center">
      <div class="col-md-12">
         <div class="card">
            <div class="card-header">Add New Organization</div>
            <div class="card-body">
               <form name="organization-create" action="/organization" method ="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="row">
                     <label for="name" class="col-md-4 col-form-label text-md-right">Organization Name<span class="text-danger">*</span></label>
                     <div class="form-group col-6">
                        <input type="text" class="form-control form-control-sm" name="name" required>
                     </div>
                  </div>
                  <div class="row">
                     <label for="name_bangla" class="col-md-4 col-form-label text-md-right">Organization Name Bangla<span class="text-danger">*</span></label>
                     <div class="form-group col-6">
                        <input type="text" class="form-control form-control-sm" name="name_bangla" required>
                     </div>
                  </div>
                  <div class="row">
                     <label for="contact_no" class="col-md-4 col-form-label text-md-right">Contact No<span class="text-danger">*</span></label>
                     <div class="form-group col-6">
                        <input type="text" class="form-control form-control-sm" name="contact_no" required>
                     </div>
                  </div>
                  <div class="row">
                     <label for="email" class="col-md-4 col-form-label text-md-right">Email<span class="text-danger">*</span></label>
                     <div class="form-group col-6">
                        <input type="text" class="form-control form-control-sm" name="email" required>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                     </div>
                     <div class="col-3">
                        <button type="submit" class="btn btn-primary">Save</button>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
