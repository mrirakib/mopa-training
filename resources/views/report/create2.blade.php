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
                    <form method="POST" action="/report2" name="training-report">
                        {{ csrf_field() }}
                        <div class="form-group row">
                            <label for="training_type_id" class="col-md-4 col-form-label text-md-right">Training Type</label>
                            <div class="col-md-6">
                                <select name="training_type_id" class="form-control" onchange="getGOInfo(this.value)">
                                   <option value="">Please Select</option>
                                   <option value="0">All</option>
                                   @foreach($training_types as $rowdata)
                                   <option value="{{$rowdata->id}}">{{$rowdata->name}}</option>
                                   @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="go_info_id" class="col-md-4 col-form-label text-md-right">Training Title</label>
                            <div class="col-md-6">
                                <select name="go_info_id" id="go_info" class="form-control">
                                   <option value="">Please Select</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="report_type" class="col-md-4 col-form-label text-md-right">Report Type</label>
                            <div class="col-md-6">
                                <select name="report_type" class="form-control">
                                   <option value="1">Summary</option>
                                   <option value="2">Details</option>
                                </select>
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
<script>
    function getGOInfo(training_type_id){
        if(training_type_id == ''){
            $('#go_info').html('<option value="">Please Select</option>');
            return;
        }
        $.ajax({
            type: "GET",
            url: "{{URL::to('/')}}/getGOInfo",
            data: {
                training_type_id: training_type_id
            },
            success: function(result) {
                if (result != '') {
                    $('#go_info').html(result);
                }
            }
        }, "json");
   }
</script>
@endsection
