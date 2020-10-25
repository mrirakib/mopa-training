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
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Office/Section') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="user_type" class="col-md-4 col-form-label text-md-right">User Type</label>
                            <div class="col-md-6">
                                <select class="form-control" name="user_type" id="user_type" required>
                                    <option value="">Select One</option>
                                    @if(Auth::user()->user_type == 1)
                                    <option value="2">Admin</option>
                                    <option value="3">Normal User</option>
                                    @elseif(Auth::user()->user_type == 2)
                                    <option value="3" selected >Normal User</option>
                                    @endif
                                </select>
                            </div>
                        </div>
                        <!-- @if(Auth::user()->user_type == 1)
                        <div class="form-group row">
                            <label for="admin_id" class="col-md-4 col-form-label text-md-right">User Group</label>
                            <div class="col-md-6">
                                <select class="form-control" name="admin_id" id="admin_id">
                                    <option value="0">Select One</option>
                                </select>
                            </div>
                        </div>
                        @else
                        <input type="text" class="form-control" name="admin_id" value="0" required hidden>
                        @endif -->
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
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
</script>
@endsection
