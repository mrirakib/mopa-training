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
use Session;

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

    public function export($training_id) 
    {
        return Excel::download(new CandidateListExport($training_id), 'candidate_list_'.$training_id.'_'.date('d-m-Y').'.xlsx');
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


        $fileName = "document.pdf";

        $html = \View::make('pdf.training-govt-order', compact('nominations', 'training', 'goInformation', 'profile'));
        $html = $html->render();

        // $mpdf->SetHeader('Chapter 1|Candidate List|{PAGENO}');
        // $mpdf->SetFooter('Footer');
        // $stylesheet = file_get_contents(url('/css/mpdf.css'));
        // $mpdf->WriteHTML($stylesheet, 1);
        // dd($training_id);

        $mpdf->WriteHTML($html);
        $mpdf->Output($fileName, 'I');



        // return view('pdf.training-govt-order', compact('nominations', 'training'));
    }
    public function training_govt_order_temp($training_id)
    {
        $nominations = NominationDetail::where('training_id', $training_id)->where('status', 1)->where('deleted_at', null)->get();

        $training = Training::find($training_id);

        // $goInformation = GOInformationTemplate::find(5);

        ////////////////////////////////////////
        $goInformation = GOInformation::where('admin_id', Auth::user()->id)->where('training_id', $training_id)->where('status', 0)->first();
        
        if($goInformation == null){
            $goInformation = GOInformationTemplate::where('admin_id', Auth::user()->id)->first();

            if($goInformation == null){
                return view('GOInformationTemplate.create');
            }
            if($goInformation->admin_id != Auth::user()->id){
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


        $fileName = "document.pdf";

        $html = \View::make('pdf.training-govt-order-temp', compact('nominations', 'training', 'goInformation'));
        $html = $html->render();

        // $mpdf->SetHeader('Chapter 1|Candidate List|{PAGENO}');
        // $mpdf->SetFooter('Footer');
        // $stylesheet = file_get_contents(url('/css/mpdf.css'));
        // $mpdf->WriteHTML($stylesheet, 1);
        // dd($training_id);

        $mpdf->WriteHTML($html);
        $mpdf->Output($fileName, 'I');



        // return view('pdf.training-govt-order', compact('nominations', 'training'));
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
