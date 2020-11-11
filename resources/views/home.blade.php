@extends('layouts.app')

@section('content')
<style>

</style>
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
            <div class="card-header">{{ __('Dashboard') }}</div>
            <div class="card-body">
               <div class="row">
                  <div class="col-md-4 mb-4">
                     <div class="card bg-light">
                        <div class="card-body text-center" id="dashboard-div1">
                           <a href="/training" class="btn btn-outline-info w-50 mb-3"><h4 class="mb-0">Training</h4></a>
                           <table class="table table-striped table-bordered table-sm table" cellspacing="0" width="100%">
                              <tbody>
                                 <tr>
                                    <td>Draft</td>
                                    <td>{{$draft_training}}</td>
                                 </tr>
                                 <tr>
                                    <td>Open</td>
                                    <td>{{$open_training}}</td>
                                 </tr>
                                 <tr>
                                    <td>Close</td>
                                    <td>{{$close_training}}</td>
                                 </tr>
                                 <tr>
                                    <td>Primary Selection</td>
                                    <td>{{$primary_selection_training}}</td>
                                 </tr>
                                 <tr>
                                    <td>Final Selection</td>
                                    <td>{{$final_selection_training}}</td>
                                 </tr>
                                 <tr>
                                    <td>Total</td>
                                    <td>{{$total_training}}</td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-4 mb-4">
                     <div class="card bg-light">
                        <div class="card-body text-center" id="dashboard-div2">
                           <a href="/go" class="btn btn-outline-info w-50 mb-3"><h4 class="mb-0">Govt Order</h4></a>
                           <table class="table table-striped table-bordered table-sm table" cellspacing="0" width="100%">
                              <tbody>
                                 <tr>
                                    <td>Bangla(Draft)</td>
                                    <td>{{$go_bangla_draft}}</td>
                                 </tr>
                                 <tr>
                                    <td>Bangla(Final)</td>
                                    <td>{{$go_bangla_final}}</td>
                                 </tr>
                                 <tr>
                                    <td>English(Draft)</td>
                                    <td>{{$go_english_draft}}</td>
                                 </tr>
                                 <tr>
                                    <td>English(Final)</td>
                                    <td>{{$go_english_final}}</td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
                  @if(Auth::user()->user_type == 1)
                  <div class="col-md-4 mb-4">
                     <div class="card bg-light">
                        <div class="card-body text-center" id="dashboard-div3">
                           <a href="/userlist" class="btn btn-outline-info w-50 mb-3"><h4 class="mb-0">User</h4></a>
                           <table class="table table-striped table-bordered table-sm table" cellspacing="0" width="100%">
                              <tbody>
                                 <tr>
                                    <td>Super Admin</td>
                                    <td>{{$user_super}}</td>
                                 </tr>
                                 <tr>
                                    <td>Admin</td>
                                    <td>{{$user_admin}}</td>
                                 </tr>
                                 <tr>
                                    <td>User</td>
                                    <td>{{$user_normal}}</td>
                                 </tr>
                                 <tr>
                                    <td>Total</td>
                                    <td>{{$user}}</td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
                  @endif
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
@endsection
