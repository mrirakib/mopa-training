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
                <div class="card-header">Update Organization Information</div>

                <div class="card-body">
                    <form method="POST" action="/organization/{{$organization->id}}" name="update-organization-type">
                        {{ csrf_field() }}
                        {{ method_field('PUT') }}

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">Organization Name <span class="text-danger">*</span></label>
                            <div class="form-group col-6">
                                <input type="text" class="form-control form-control-sm" name="name" value="{{$organization->name}}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name_bangla" class="col-md-4 col-form-label text-md-right">Organization Name Bangla<span class="text-danger">*</span></label>
                            <div class="form-group col-6">
                                <input type="text" class="form-control form-control-sm" name="name_bangla" value="{{$organization->name_bangla}}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="contact_no" class="col-md-4 col-form-label text-md-right">Contact No<span class="text-danger">*</span></label>
                            <div class="form-group col-6">
                                <input type="text" class="form-control form-control-sm" name="contact_no" value="{{$organization->contact_no}}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">Email<span class="text-danger">*</span></label>
                            <div class="form-group col-6">
                                <input type="text" class="form-control form-control-sm" name="email" value="{{$organization->email}}" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="status" class="col-md-4 col-form-label text-md-right">Status</label>
                            <div class="col-md-6">
                                <select class="form-control" name="status" required>
                                    <!-- <option value="">Select One</option> -->
                                    <option value="0" @if($organization->status == 0) selected @endif>Inactive</option>
                                    <option value="1" @if($organization->status == 1) selected @endif>Active</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Update') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
