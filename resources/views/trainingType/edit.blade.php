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
                <div class="card-header">Update Training Type Information</div>

                <div class="card-body">
                    <form method="POST" action="/trainingType/{{$trainingType->id}}" name="update-training-type">
                        {{ csrf_field() }}
                        {{ method_field('PUT') }}

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Training type') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('training_type') is-invalid @enderror" name="training_type" value="{{ $trainingType->training_type }}" required autocomplete="name" autofocus>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="status" class="col-md-4 col-form-label text-md-right">Status</label>
                            <div class="col-md-6">
                                <select class="form-control" name="status" required>
                                    <!-- <option value="">Select One</option> -->
                                    <option value="0" @if($trainingType->status == 0) selected @endif>Inactive</option>
                                    <option value="1" @if($trainingType->status == 1) selected @endif>Active</option>
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
