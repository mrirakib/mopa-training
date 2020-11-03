<?php

namespace App\Http\Controllers;

use App\Models\Nomination;
use App\Models\NominationDetail;
use App\Models\Training;
use Illuminate\Http\Request;
use Auth;

class NominationController extends Controller
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

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        NominationDetail::where('training_id', $request->training_id)->where('user_id', Auth::id())->where('deleted_at', NULL)->update(['deleted_at' => date('Y-m-d H:i:s')]);

        $id_no = $request->input('id_no');
        $name = $request->input('name');
        $name_bangla = $request->input('name_bangla');
        $designation = $request->input('designation');
        $designation_bangla = $request->input('designation_bangla');
        $contact_no = $request->input('contact_no');
        $email = $request->input('email');
        $working_place = $request->input('working_place');
        $working_place_bangla = $request->input('working_place_bangla');

        if($id_no == null){
            return back()->with('Msgerror', 'Nomination list is empty. Please add Officers information. Then click on submit');
        }

        $training = Training::find($request->training_id);
        $nomination = Nomination::where('training_id', $request->training_id)->where('user_id', Auth::id())->first();
        if(!$nomination){
            $nomination = new Nomination();
            $nomination->training_id = $request->training_id;
            $nomination->admin_id = $training->admin_id;
            $nomination->user_id = Auth::user()->id;
            $nomination->status = 0;
            $nomination->save();            
        }

        $arrData = array();

        foreach ( $id_no as $key => $value ) {
            $arrData[] = array(
                "nomination_id" => $nomination->id,
                "training_id" => $request->training_id,
                "admin_id" => $training->admin_id,
                "user_id" => Auth::user()->id,
                "status" => 0,
                "id_no" => $id_no[$key],
                "name" => $name[$key],
                "name_bangla" => $name_bangla[$key],
                "designation" => $designation[$key],
                "designation_bangla" => $designation_bangla[$key],
                "contact_no" => $contact_no[$key],
                "email" => $email[$key],
                "working_place" => $working_place[$key],
                "working_place_bangla" => $working_place_bangla[$key],
            );
        }

        $nom_details = NominationDetail::insert($arrData);

        userlog('Nomination information save. Training id: '.$request->training_id);

        return redirect('training')->with('Msgsuccess', 'Nomination information saved successfully');

    }

    public function candidateSelection(Request $request)
    {
        $id_no = $request->input('id_no');
        $training_id = $request->input('training_id');


        if($id_no == null){
            return back()->with('Msgerror', 'Please select the candidate. Then click on save button');
        }

        $training = Training::find($request->training_id);


        NominationDetail::where('training_id', $training_id)->where('deleted_at', null)->whereIn('id', $id_no)->update(['status' => 1]);

        NominationDetail::where('training_id', $training_id)->where('deleted_at', null)->whereNotIn('id', $id_no)->update(['status' => 0]);

        Training::where('id', $training_id)->update(['status' => 3]);

        userlog('Candidate Selection save. Training id: '.$training_id);

        return redirect('/training/'.$training_id)->with('Msgsuccess', 'Candidate selection done successfully');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Nomination  $nomination
     * @return \Illuminate\Http\Response
     */
    public function show(Nomination $nomination)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Nomination  $nomination
     * @return \Illuminate\Http\Response
     */
    public function edit(Nomination $nomination)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Nomination  $nomination
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Nomination $nomination)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Nomination  $nomination
     * @return \Illuminate\Http\Response
     */
    public function destroy(Nomination $nomination)
    {
        //
    }
}
