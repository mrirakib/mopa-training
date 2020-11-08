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
            <div class="card-header">GO Information(English)</div>
            <div class="card-body">
               <p style="margin-bottom: 0px;"><b>Date</b> : {{$gOInformation->publish_date}}</p>
               <p style="margin-bottom: 0px;"><b>Subject</b> : @php echo $gOInformation->subject @endphp</p>
               <p style="margin-bottom: 0px;"><b>Details</b> : @php echo $gOInformation->details @endphp</p>
               <p style="margin-bottom: 0px;"><b>Rules and Regulations</b> : @php echo $gOInformation->rules_regulations @endphp</p>
               <p style="margin-bottom: 0px;"><b>Kind Information</b> : @php echo $gOInformation->kind_information @endphp</p>
               <p style="margin-bottom: 0px;"><b>Training Institute Information</b> : @php echo $gOInformation->before_kind_information @endphp</p>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col-4">
                        
                        <a class="btn btn-secondary" href="/"><i class="fa fa-arrow-left"></i> Back </a>
                     </div>
                  </div>                  
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

@endsection
