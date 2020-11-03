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
                    <form method="POST" action="/report" name="training-report">
                        {{ csrf_field() }}
                        <div class="form-group row">
                            <label for="id_no" class="col-md-4 col-form-label text-md-right">Id No</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control form-control-sm" name="id_no" autocomplete="id_no" autofocus>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control form-control-sm @error('name') is-invalid @enderror" name="name" autocomplete="name" autofocus>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="designation" class="col-md-4 col-form-label text-md-right">Officer Designation</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control form-control-sm @error('designation') is-invalid @enderror" name="designation" autocomplete="designation" autofocus>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="contact_no" class="col-md-4 col-form-label text-md-right">Contact No</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control form-control-sm @error('contact_no') is-invalid @enderror" name="contact_no" autocomplete="contact_no" autofocus>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>

                            <div class="col-md-6">
                                <input type="email" class="form-control form-control-sm @error('email') is-invalid @enderror" name="email" autocomplete="email">
                            </div>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Report') }}
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
