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
                <div class="card-header">Update User Information</div>

                <div class="card-body">
                    <form method="POST" action="/userlist/{{$user->id}}" name="update-user">
                        {{ csrf_field() }}
                        {{ method_field('PUT') }}

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $user->name }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name_bangla" class="col-md-4 col-form-label text-md-right">{{ __('Name Bangla') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="name_bangla" type="text" class="form-control @error('name_bangla') is-invalid @enderror" name="name_bangla" value="{{ $user->name_bangla }}" required autocomplete="name_bangla" autofocus>

                                @error('name_bangla')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="section" class="col-md-4 col-form-label text-md-right">{{ __('Section') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="section" type="text" class="form-control @error('section') is-invalid @enderror" name="section" value="{{ $user->section }}" required autocomplete="section" autofocus>

                                @error('section')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="section_bangla" class="col-md-4 col-form-label text-md-right">{{ __('Section Bangla') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="section_bangla" type="text" class="form-control @error('section_bangla') is-invalid @enderror" name="section_bangla" value="{{ $user->section_bangla }}" required autocomplete="section_bangla" autofocus>

                                @error('section_bangla')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{$user->email}}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="user_type" class="col-md-4 col-form-label text-md-right">User Type<span class="text-danger">*</span></label>
                            <div class="col-md-6">
                                <select class="form-control" name="user_type" id="user_type" required>
                                    <!-- <option value="">Select One</option> -->
                                    @if(Auth::user()->user_type == 1)
                                    <option value="2" @if($user->user_type == 2) selected @endif>Admin User</option>
                                    <option value="3" @if($user->user_type == 3) selected @endif>Normal User</option>
                                    @elseif(Auth::user()->user_type == 2)
                                    <option value="3" selected >Normal User</option>
                                    @endif
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="status" class="col-md-4 col-form-label text-md-right">Status<span class="text-danger">*</span></label>
                            <div class="col-md-6">
                                <select class="form-control" name="status" required>
                                    <option value="">Select One</option>
                                    <option value="1" @if($user->status == 1) selected @endif>Active</option>
                                    <option value="2" @if($user->status == 2) selected @endif>Inactive</option>
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
