<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Training;
use App\Models\Organization;
use App\Models\Nomination;
use App\Models\NominationDetail;
use App\Models\GOInformationTemplate;
use App\Models\GOInformation;
use App\Models\UserProfile;
use App\User;
use PDF;
use Auth;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\CandidateListExport;
use App\Exports\TrainingReportExport;
use Session;
use DB;

class PDFController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth']);
    }

    public function index()
    {
        // $shows = NominationDetail::all();

        // return view('Excel.list', compact('shows'));
    }

    public function candidate_list_export($training_id) 
    {
        userlog('Candidate list export. Training id: '.$training_id);

        return Excel::download(new CandidateListExport($training_id), 'candidate_list_'.$training_id.'_'.date('d-m-Y').'.xlsx');
    }

    public function training_report_export(Request $request) 
    {
        ////////////////////////////////////////
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

        $q->whereIn('training_id', $training_ids)->where('nomination_details.status', 1);

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

        $results = $q->leftJoin('trainings', 'nomination_details.training_id', '=', 'trainings.id')
             ->select('title', 'id_no', 'name', 'designation', 'contact_no', 'email', 'working_place', 'name_bangla', 'designation_bangla', 'working_place_bangla')->get();

        $id_no = $request->id_no;
        $name = $request->name;
        $designation = $request->designation;
        $contact_no = $request->contact_no;
        $email = $request->email;
        ////////////////////////////////////////

        userlog('Training Report export.');

        return Excel::download(new TrainingReportExport($results), 'training-report - '.date('d-m-Y').'.xlsx');
    }

    public function training_govt_order($training_id)
    {
        $training = Training::find($training_id);
        if($training == null){
            Session::flash('Msgerror', 'No Training Found.');
            return redirect('/');
        }
        if(($training->admin_id != Auth::user()->id) && (Auth::user()->user_type == 2)){
            Session::flash('Msgerror', 'Access Denied.');
            return redirect('/');
        }

        $nominations = NominationDetail::where('training_id', $training_id)->where('status', 1)->where('deleted_at', null)->get();

        $profile = UserProfile::where('user_id', $training->admin_id)->where('status', 1)->first();

        if($profile == null){
            if(Auth::user()->user_type == 1){
                Session::flash('Msgerror', 'Signatory information not found. Admin of this training should fill in the signatory information first.');
                return redirect('/');

            }elseif(Auth::user()->user_type == 2){
                Session::flash('Msgerror', 'Signatory information not found. Please fill in the signatory information then try again.');
                return redirect('/userProfile/create');
            }else{
                return redirect('/');
            }
                return redirect('/');
        }


        ////////////////////////////////////////
        $goInformation = GOInformation::where('admin_id', $training->admin_id)->where('training_id', $training_id)->where('status', 1)->first();
        
        if($goInformation == null){
            if(Auth::user()->user_type == 2){
                $goInformation = GOInformationTemplate::where('admin_id', $training->admin_id)->first();

                if($goInformation == null){
                    return view('GOInformationTemplate.create');
                }
                if($goInformation->admin_id != Auth::user()->id){
                    return redirect('/');
                }                
            }else{
                Session::flash('Msgerror', 'GO Information not found.');
                return redirect('/');
            }
        }
        ////////////////////////////////////////


        $mpdf = new \Mpdf\Mpdf([
            'default_font' => "nikosh",
            'margin_left' => 15,
            'margin_right' => 15,
            'margin_top' => 20,
            'margin_bottom' => 15,
            'margin_header' => 10,
            'margin_footer' => 10,
            'mode' => 'utf-8',
            'format' => 'A4',
        ]);


        $fileName = $profile->department.' '.date('d-m-Y').".pdf";

        $html = \View::make('pdf.training-govt-order', compact('nominations', 'training', 'goInformation', 'profile'));
        $html = $html->render();

        userlog('Training Go create.'. $training_id);

        $mpdf->WriteHTML($html);
        $mpdf->Output($fileName, 'I');
    }
    public function training_govt_order_temp($training_id)
    {
        $training = Training::find($training_id);
        if($training == null){
            Session::flash('Msgerror', 'No Training Found.');
            return redirect('/');
        }
        if(($training->admin_id != Auth::user()->id) && (Auth::user()->user_type == 2)){
            Session::flash('Msgerror', 'Access Denied.');
            return redirect('/');
        }

        $nominations = NominationDetail::where('training_id', $training_id)->where('status', 1)->where('deleted_at', null)->get();

        $profile = UserProfile::where('user_id', $training->admin_id)->where('status', 1)->first();

        if($profile == null){
            if(Auth::user()->user_type == 1){
                Session::flash('Msgerror', 'Signatory information not found. Admin of this training should fill in the signatory information first.');
                return redirect('/');

            }elseif(Auth::user()->user_type == 2){
                Session::flash('Msgerror', 'Signatory information not found. Please fill in the signatory information then try again.');
                return redirect('/userProfile/create');
            }else{
                return redirect('/');
            }
                return redirect('/');
        }


        ////////////////////////////////////////
        $goInformation = GOInformation::where('admin_id', $training->admin_id)->where('training_id', $training_id)->first();
        
        if($goInformation == null){
            if(Auth::user()->user_type == 2){
                $goInformation = GOInformationTemplate::where('admin_id', $training->admin_id)->first();

                if($goInformation == null){
                    return view('GOInformationTemplate.create');
                }
                if($goInformation->admin_id != Auth::user()->id){
                    return redirect('/');
                }                
            }else{
                Session::flash('Msgerror', 'GO Information not found.');
                return redirect('/');
            }
        }
        ////////////////////////////////////////


        $mpdf = new \Mpdf\Mpdf([
            'default_font' => "nikosh",
            'margin_left' => 15,
            'margin_right' => 15,
            'margin_top' => 20,
            'margin_bottom' => 15,
            'margin_header' => 10,
            'margin_footer' => 10,
            'mode' => 'utf-8',
            'format' => 'A4',
        ]);

        $mpdf->SetWatermarkText('DRAFT GO');
        $mpdf->showWatermarkText = true;

        $fileName = $profile->department.' '.date('d-m-Y').".pdf";

        $html = \View::make('pdf.training-govt-order', compact('nominations', 'training', 'goInformation', 'profile'));
        $html = $html->render();

        userlog('Training Draft Go create.'. $training_id);

        $mpdf->WriteHTML($html);
        $mpdf->Output($fileName, 'I');
    }
    public function training_govt_order_english($training_id)
    {
        $training = Training::find($training_id);
        if($training == null){
            Session::flash('Msgerror', 'No Training Found.');
            return redirect('/');
        }
        if(($training->admin_id != Auth::user()->id) && (Auth::user()->user_type == 2)){
            Session::flash('Msgerror', 'Access Denied.');
            return redirect('/');
        }

        $nominations = NominationDetail::where('training_id', $training_id)->where('status', 1)->where('deleted_at', null)->get();

        $profile = UserProfile::where('user_id', $training->admin_id)->where('status', 1)->first();

        if($profile == null){
            if(Auth::user()->user_type == 1){
                Session::flash('Msgerror', 'Signatory information not found. Admin of this training should fill in the signatory information first.');
                return redirect('/');

            }elseif(Auth::user()->user_type == 2){
                Session::flash('Msgerror', 'Signatory information not found. Please fill in the signatory information then try again.');
                return redirect('/userProfile/create');
            }else{
                return redirect('/');
            }
                return redirect('/');
        }


        ////////////////////////////////////////
        $goInformation = GOInformation::where('admin_id', $training->admin_id)->where('training_id', $training_id)->where('status', 1)->where('type', 2)->first();
        
        if($goInformation == null){
            if(Auth::user()->user_type == 2){
                $goInformation = GOInformationTemplate::where('admin_id', $training->admin_id)->where('type', 2)->first();

                if($goInformation == null){
                    return view('GOInformationTemplateEnglish.create');
                }
                if($goInformation->admin_id != Auth::user()->id){
                    return redirect('/');
                }                
            }else{
                Session::flash('Msgerror', 'GO Information not found.');
                return redirect('/');
            }
        }
        ////////////////////////////////////////


        $mpdf = new \Mpdf\Mpdf([
            'default_font' => "times",
            'margin_left' => 15,
            'margin_right' => 15,
            'margin_top' => 20,
            'margin_bottom' => 15,
            'margin_header' => 10,
            'margin_footer' => 10,
            'mode' => 'utf-8',
            'format' => 'A4',
        ]);


        $fileName = $profile->department.' '.date('d-m-Y').".pdf";

        $html = \View::make('pdf.training-govt-order-english', compact('nominations', 'training', 'goInformation', 'profile'));
        $html = $html->render();

        userlog('Training Go create.'. $training_id);

        $mpdf->WriteHTML($html);
        $mpdf->Output($fileName, 'I');
    }
    public function training_govt_order_temp_english($training_id)
    {
        $training = Training::find($training_id);
        if($training == null){
            Session::flash('Msgerror', 'No Training Found.');
            return redirect('/');
        }
        if(($training->admin_id != Auth::user()->id) && (Auth::user()->user_type == 2)){
            Session::flash('Msgerror', 'Access Denied.');
            return redirect('/');
        }

        $nominations = NominationDetail::where('training_id', $training_id)->where('status', 1)->where('deleted_at', null)->get();

        $profile = UserProfile::where('user_id', $training->admin_id)->where('status', 1)->first();

        if($profile == null){
            if(Auth::user()->user_type == 1){
                Session::flash('Msgerror', 'Signatory information not found. Admin of this training should fill in the signatory information first.');
                return redirect('/');

            }elseif(Auth::user()->user_type == 2){
                Session::flash('Msgerror', 'Signatory information not found. Please fill in the signatory information then try again.');
                return redirect('/userProfile/create');
            }else{
                return redirect('/');
            }
                return redirect('/');
        }


        ////////////////////////////////////////
        $goInformation = GOInformation::where('admin_id', $training->admin_id)->where('training_id', $training_id)->where('type', 2)->first();
        
        if($goInformation == null){
            if(Auth::user()->user_type == 2){
                $goInformation = GOInformationTemplate::where('admin_id', $training->admin_id)->where('type', 2)->first();

                if($goInformation == null){
                    return view('GOInformationTemplateEnglish.create');
                }
                if($goInformation->admin_id != Auth::user()->id){
                    return redirect('/');
                }                
            }else{
                Session::flash('Msgerror', 'GO Information not found.');
                return redirect('/');
            }
        }
        ////////////////////////////////////////


        $mpdf = new \Mpdf\Mpdf([
            'default_font' => "times",
            'margin_left' => 15,
            'margin_right' => 15,
            'margin_top' => 20,
            'margin_bottom' => 15,
            'margin_header' => 10,
            'margin_footer' => 10,
            'mode' => 'utf-8',
            'format' => 'A4',
        ]);

        $mpdf->SetWatermarkText('DRAFT GO');
        $mpdf->showWatermarkText = true;

        $fileName = $profile->department.' '.date('d-m-Y').".pdf";

        $html = \View::make('pdf.training-govt-order-english', compact('nominations', 'training', 'goInformation', 'profile'));
        $html = $html->render();

        userlog('Training Draft Go create.'. $training_id);

        $mpdf->WriteHTML($html);
        $mpdf->Output($fileName, 'I');
    }
    public function training_report_print(Request $request)
    {
        ////////////////////////////////////////
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
        ////////////////////////////////////////


        $mpdf = new \Mpdf\Mpdf([
            'default_font' => "nikosh",
            'margin_left' => 15,
            'margin_right' => 15,
            'margin_top' => 20,
            'margin_bottom' => 15,
            'margin_header' => 10,
            'margin_footer' => 10,
            'mode' => 'utf-8',
            'format' => 'A4',
        ]);

        $fileName = 'Training Report '.date('d-m-Y').".pdf";

        $html = \View::make('pdf.training-report-print', compact('results', 'id_no', 'name', 'designation', 'contact_no', 'email'));
        $html = $html->render();

        userlog('Training Report pdf create.');

        $mpdf->WriteHTML($html);
        $mpdf->Output($fileName, 'I');
    }
    public function training_report_print2(Request $request)
    {
        ////////////////////////////////////////
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
            if($organization_id != 0){
                $q2->where('organization_id', $organization_id);
            }
            if(Auth::user()->user_type == 2){
                $q2->where('admin_id', Auth::user()->id);
            }
            $training_ids = $q2->pluck('id');
        }

        if($report_type == 2){
            $q = NominationDetail::query();
            $q->whereIn('training_id', $training_ids)->where('status', 1)->orderBy('training_id');
            
            if(isUser()){
                $q->where('user_id', Auth::user()->id);
            }

            $results = $q->get();
        }elseif($report_type == 1){
            $q = NominationDetail::query();
            $q->whereIn('training_id', $training_ids)->where('status', 1);

            if(isUser()){
                $q->where('user_id', Auth::user()->id);
            }

            $q->select('training_id', DB::raw('count(*) as total'));
            $q->groupBy('training_id');
            $results = $q->get();
        }
        ////////////////////////////////////////


        $mpdf = new \Mpdf\Mpdf([
            'default_font' => "nikosh",
            'margin_left' => 15,
            'margin_right' => 15,
            'margin_top' => 20,
            'margin_bottom' => 15,
            'margin_header' => 10,
            'margin_footer' => 10,
            'mode' => 'utf-8',
            'format' => 'A4',
        ]);

        $fileName = 'Training Report '.date('d-m-Y').".pdf";
        $organization = Organization::find($organization_id);
        $go_info = GOInformation::find($go_info_id);

        if($organization_id > 0){
            $organization = $organization->name;
        }else{
            $organization = 'All';
        }

        if($report_type == 2){
            $report_type = "Details";
            $html = \View::make('pdf.training-report-print2', compact('results', 'organization', 'go_info', 'report_type', 'go_info_id'));
        }elseif($report_type == 1){
            $report_type = "Summary";
            $html = \View::make('pdf.training-report-print3', compact('results', 'organization', 'go_info', 'report_type', 'go_info_id'));
        }
        $html = $html->render();

        userlog('Training Report pdf create.');

        $mpdf->WriteHTML($html);
        $mpdf->Output($fileName, 'I');
    }
    public function training_govt_order2($training_id)
    {
        $nominations = NominationDetail::where('training_id', $training_id)->where('status', 1)->where('deleted_at', null)->get();

        return view('pdf.training-govt-order2', compact('nominations'));
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
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
}
