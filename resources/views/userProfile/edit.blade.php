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
                <div class="card-header">Update Signatory Information</div>

                <div class="card-body">
                    <form method="POST" action="/userProfile/{{$profile->id}}" name="update-profile">
                        {{ csrf_field() }}
                        {{ method_field('PUT') }}
                        <div class="form-group row">
                            <label for="department" class="col-md-4 col-form-label text-md-right">Section/Department(English)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('department') is-invalid @enderror" name="department" value="{{$profile->department}}" required autocomplete="department" autofocus required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="department_bangla" class="col-md-4 col-form-label text-md-right">Section/Department(Bangla)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('department_bangla') is-invalid @enderror" name="department_bangla" value="{{$profile->department_bangla}}" required autocomplete="department_bangla" autofocus required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">Name(English)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" required autocomplete="name" value="{{$profile->name}}" autofocus required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name_bangla" class="col-md-4 col-form-label text-md-right">Name(Bangla)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('name_bangla') is-invalid @enderror" name="name_bangla" value="{{$profile->name_bangla}}" required autocomplete="name_bangla" autofocus>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="designation" class="col-md-4 col-form-label text-md-right">Designation(English)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('designation') is-invalid @enderror" name="designation" value="{{$profile->designation}}" required autocomplete="designation" autofocus>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="designation_bangla" class="col-md-4 col-form-label text-md-right">Designation(Bangla)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('designation_bangla') is-invalid @enderror" name="designation_bangla" value="{{$profile->designation_bangla}}" required autocomplete="designation_bangla" autofocus>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="contact_no" class="col-md-4 col-form-label text-md-right">Contact No(Official)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('contact_no') is-invalid @enderror" name="contact_no" value="{{$profile->contact_no}}" required autocomplete="contact_no" autofocus>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{$profile->email}}" required autocomplete="email">
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
