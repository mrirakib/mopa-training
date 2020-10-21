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
                     <div class="form-group col-12">
                        <label for="title">Training Type</label>
                        <textarea type="text" class="form-control" name="training_type" rows="1" required></textarea>
                     </div>
                  </div>
                  <div class="row">
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
