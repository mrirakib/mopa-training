<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Training;
use App\Models\Nomination;
use App\Models\NominationDetail;
use App\Models\GOInformationTemplate;
use App\User;
use PDF;
use Auth;

class PDFController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }
    public function training_govt_order($training_id)
    {
        $nominations = NominationDetail::where('training_id', $training_id)->where('status', 1)->where('deleted_at', null)->get();

        $training = Training::find($training_id);

        $goInformation = GOInformationTemplate::find(5);


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

        $html = \View::make('pdf.training-govt-order', compact('nominations', 'training', 'goInformation'));
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
