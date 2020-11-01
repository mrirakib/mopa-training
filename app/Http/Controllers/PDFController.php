<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Training;
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
        $this->middleware(['auth', 'verify.adminabove']);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
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


        if(Auth::user()->user_type == 1){
            $training_ids = Training::where('status', 4)->pluck('id');
        }else{
            $training_ids = Training::where('status', 4)->where('admin_id', Auth::user()->id)->pluck('id');
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

        // $results = $q->select('id_no', 'name_bangla', 'designation_bangla', 'contact_no', 'email')->get();

        $results = $q->leftJoin('trainings', 'nomination_details.training_id', '=', 'trainings.id')
             ->select('title', 'id_no', 'name_bangla', 'designation_bangla', 'contact_no', 'email', 'working_place')->get();

        // dd($results);

        // $results = $q->select('training_id', 'id_no', 'name_bangla', 'designation_bangla', 'contact_no', 'email')->get();


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
    public function training_report_print(Request $request)
    {
        ////////////////////////////////////////
        if($request->id_no == null && $request->name == null && $request->designation == null && $request->contact_no == null && $request->email == null){
            Session::flash('Msgerror', 'Please input at least 1 field.');
            return redirect('/report');
        }


        if(Auth::user()->user_type == 1){
            $training_ids = Training::where('status', 4)->pluck('id');
        }else{
            $training_ids = Training::where('status', 4)->where('admin_id', Auth::user()->id)->pluck('id');
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
    public function training_govt_order2($training_id)
    {
        $nominations = NominationDetail::where('training_id', $training_id)->where('status', 1)->where('deleted_at', null)->get();

        return view('pdf.training-govt-order2', compact('nominations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
