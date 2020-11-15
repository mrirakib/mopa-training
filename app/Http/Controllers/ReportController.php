<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Training;
use App\Models\Organization;
use App\Models\GOInformation;
use App\Models\NominationDetail;
use Illuminate\Support\Facades\Input;
use DB;
use Auth;
use Session;


class ReportController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth']);
    }
    public function index()
    {
        return view('report.create');
    }
    public function index2()
    {
        $organizations = Organization::where('status', 1)->get();

        return view('report.create2', compact('organizations'));
    }
    public function create()
    {
        //
    }
    public function store(Request $request)
    {
        if($request->id_no == null && $request->name == null && $request->designation == null && $request->contact_no == null && $request->email == null){
            Session::flash('Msgerror', 'Please input at least 1 field.');
            return redirect('/report');
        }


        if(isAdmin()){
            $training_ids = Training::where('status', 4)->where('admin_id', Auth::user()->id)->pluck('id');
        }else{
            $training_ids = Training::where('status', 4)->pluck('id');
        }

        $q = NominationDetail::query();

        $q->whereIn('training_id', $training_ids)->where('status', 1);

        if ($request->id_no != null) {
            $q->where('id_no', $request->id_no);

        }

        if ($request->name) {
            $q->where('name', 'LIKE', '%'.$request->name.'%');

        }

        if ($request->designation) {
            $q->where('designation', 'LIKE', '%'.$request->designation.'%');

        }

        if ($request->contact_no) {
            $q->where('contact_no', 'LIKE', '%'.$request->contact_no.'%');

        }

        if ($request->email) {
            $q->where('email', 'LIKE', '%'.$request->email.'%');
        }

        if(isUser()){
            $q->where('user_id', Auth::user()->id);
        }

        $results = $q->get();

        $id_no = $request->id_no;
        $name = $request->name;
        $designation = $request->designation;
        $contact_no = $request->contact_no;
        $email = $request->email;

        userlog('Training Report create.');

        return view('report.show', compact('results', 'id_no', 'name', 'designation', 'contact_no', 'email'));
    }

    public function store2(Request $request)
    {
        $organization_id = $request->organization_id;
        $go_info_id = $request->go_info_id;
        $report_type = $request->report_type;

        if($organization_id == null && $go_info_id == null && $report_type){
            Session::flash('Msgerror', 'Please input at least 1 field.');
            return redirect('/report2');
        }

        if($go_info_id != null){
            if(Auth::user()->user_type == 1){
                $training_ids = GOInformation::where('id', $go_info_id)->pluck('training_id');
            }else{
                $training_ids = GOInformation::where('id', $go_info_id)->pluck('training_id');
            }
        }elseif($organization_id != null){
            $q2 = Training::query();
            $q2->where('status', 4);
            if($organization_id > 0){
                $q2->where('organization_id', $organization_id);
            }
            if(isAdmin()){
                $q2->where('admin_id', Auth::user()->id);
            }
            $training_ids = $q2->pluck('id');
        }

        $organization = Organization::find($organization_id);
        $go_info = GOInformation::find($go_info_id);

        if($organization_id > 0){
            $organization = $organization->name;
        }else{
            $organization = 'All';
        }

        if($report_type == 2){
            $q = NominationDetail::query();

            $q->whereIn('training_id', $training_ids)->where('status', 1)->orderBy('training_id');

            if(isUser()){
                $q->where('user_id', Auth::user()->id);
            }

            $results = $q->get();            

            userlog('Training Report create.');

            $report_type_text = "Details";

            return view('report.show2', compact('results', 'organization_id', 'organization', 'go_info', 'report_type', 'go_info_id', 'report_type_text'));            
        }elseif($report_type == 1){
            $q = NominationDetail::query();

            if(isUser()){
                $q->where('user_id', Auth::user()->id);
            }

            $q->whereIn('training_id', $training_ids)->where('status', 1);
            $q->select('training_id', DB::raw('count(*) as total'));
            $q->groupBy('training_id');

            $results = $q->get();

            userlog('Training Report create.');

            $report_type_text = "Summary";

            return view('report.show3', compact('results', 'organization_id', 'organization', 'go_info', 'report_type', 'go_info_id', 'report_type_text'));            
        }
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }
    
    public function destroy($id)
    {
        //
    }

    public function getGOInfo(Request $request)
    {

        $organization_id = $request->organization_id;

        $q = Training::query();
        if($organization_id > 0){
            $q->where('organization_id', $request->organization_id);
        }
        if(Auth::user()->user_type == 2){
            $q->where('admin_id', Auth::user()->id);
        }
        $q->where('status', 4);
        $training_ids = $q->pluck('id');

        $go_infos = GOInformation::whereIn('training_id', $training_ids)->where('status', 1)->get();

        echo '<option value="">Please Select</option>';
        foreach ( $go_infos as $value ):
            echo '<option value="' . $value->id . '">' . $value->subject . '</option>';
        endforeach;
    }
}
