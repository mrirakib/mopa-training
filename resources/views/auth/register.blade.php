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
                <div class="card-header">{{ __('Create User') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label-sm text-md-right">{{ __('Office') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control form-control-sm @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name_bangla" class="col-md-4 col-form-label-sm text-md-right">{{ __('Office Bangla') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="name_bangla" type="text" class="form-control form-control-sm @error('name_bangla') is-invalid @enderror" name="name_bangla" value="{{ old('name_bangla') }}" required autocomplete="name_bangla" autofocus>

                                @error('name_bangla')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="section" class="col-md-4 col-form-label-sm text-md-right">{{ __('Section') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="section" type="text" class="form-control form-control-sm @error('section') is-invalid @enderror" name="section" value="{{ old('section') }}" required autocomplete="section" autofocus>

                                @error('section')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="section_bangla" class="col-md-4 col-form-label-sm text-md-right">{{ __('Section Bangla') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="section_bangla" type="text" class="form-control form-control-sm @error('section_bangla') is-invalid @enderror" name="section_bangla" value="{{ old('section_bangla') }}" required autocomplete="section_bangla" autofocus>

                                @error('section_bangla')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label-sm text-md-right">{{ __('E-Mail Address') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control form-control-sm @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label-sm text-md-right">{{ __('Password') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control form-control-sm @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label-sm text-md-right">{{ __('Confirm Password') }}<span class="text-danger">*</span></label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control form-control-sm" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="user_type" class="col-md-4 col-form-label-sm text-md-right">User Type<span class="text-danger">*</span></label>
                            <div class="col-md-6">
                                <select class="form-control form-control-sm select2" name="user_type" id="user_type" required>
                                    <option value="">Select One</option>
                                    @if(Auth::user()->user_type == 1)
                                    <option value="2">Admin User</option>
                                    @endif
                                    <option value="3">Approval Authority User</option>
                                    <option value="4">Entry User</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="user_level" class="col-md-4 col-form-label-sm text-md-right">User Level<span class="text-danger">*</span></label>
                            <div class="col-md-6">
                                <select class="form-control form-control-sm select2" name="user_level" id="user_level" required>
                                    <option value="">Select One</option>
                                    <option value="0">Admin</option>
                                    <option value="1">Ministry</option>
                                    <option value="2">DC Office</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Create User') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
   function getAdminUserList(user_type){
    if(user_type == 3)
    {
        $.ajax({
            type: "GET",
            url: "{{URL::to('/')}}/getAdminUserList",
            data: {
                user_type: user_type
            },
            success: function(result) {
                if (result != '') {
                    alert(result);
                    $('#admin_id').html(result);
                }
            }
        }, "json");
    }
   }

   $('.select2').select2({
       width: '100%',
       placeholder: "Select an Option",
       allowClear: true
     });
</script>
@endsection
