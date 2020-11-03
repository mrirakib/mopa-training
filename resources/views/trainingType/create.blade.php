@extends('layouts.app')


@section('content')

<div class="container">
   <div class="row justify-content-center">
      <div class="col-md-12">
         <div class="card">
            <div class="card-header">Add New Training Type</div>
            <div class="card-body">
               <form name="training-type-create" action="/trainingType" method ="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="row">
                     <label for="status" class="col-md-4 col-form-label text-md-right">Training Type</label>
                     <div class="form-group col-6">
                        <input type="text" class="form-control form-control-sm" name="name" required>
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
