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
                    <form method="POST" action="/userProfile" name="update-profile">
                        {{ csrf_field() }}
                        <div class="form-group row">
                            <label for="department" class="col-md-4 col-form-label text-md-right">Section/Department(English)</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control @error('department') is-invalid @enderror" name="department" value="" required autocomplete="department" autofocus required placeholder="Ex: Internal Training - 1">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="department_bangla" class="col-md-4 col-form-label text-md-right">Section/Department(Bangla)</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control @error('department_bangla') is-invalid @enderror" name="department_bangla" value="" required autocomplete="department_bangla" autofocus required placeholder="উদাঃ অভ্যন্তরীন প্রশিক্ষণ - ১">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">Officer Name(English)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="" required autocomplete="name" autofocus required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name_bangla" class="col-md-4 col-form-label text-md-right">Officer Name(Bangla)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('name_bangla') is-invalid @enderror" name="name_bangla" value="" required autocomplete="name_bangla" autofocus>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="designation" class="col-md-4 col-form-label text-md-right">Officer Designation(English)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('designation') is-invalid @enderror" name="designation" value="" required autocomplete="designation" autofocus placeholder="Deputy Secretary">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="designation_bangla" class="col-md-4 col-form-label text-md-right">Officer Designation(Bangla)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('designation_bangla') is-invalid @enderror" name="designation_bangla" value="" required autocomplete="designation_bangla" autofocus placeholder="উদাঃ উপসচিব">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="contact_no" class="col-md-4 col-form-label text-md-right">Contact No(Official)</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control @error('contact_no') is-invalid @enderror" name="contact_no" value="" required autocomplete="contact_no" autofocus placeholder="Ex: 02-9594XXX">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail Address(Official)</label>

                            <div class="col-md-6">
                                <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="" required autocomplete="email" placeholder="Ex: it3@mopa.gov.bd">
                            </div>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Save') }}
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
