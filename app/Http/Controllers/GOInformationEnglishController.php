<?php

namespace App\Http\Controllers;

use App\Models\GOInformation;
use App\Models\GOInformationTemplate;
use Illuminate\Http\Request;
use App\User;
use Auth;
use Session;

class GOInformationEnglishController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth', 'verify.admin']);
    }
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
    public function create($training_id)
    {
        $goInformation = GOInformation::where('admin_id', Auth::user()->id)->where('training_id', $training_id)->where('type', 2)->first();

        
        if($goInformation == null){
            $goInformation = GOInformationTemplate::where('admin_id', Auth::user()->id)->where('type', 2)->first();

            if($goInformation == null){
                return view('GOInformationTemplateEnglish.create');
            }
            if($goInformation->admin_id != Auth::user()->id){
                return redirect('/');
            }
            return view('GOInformationEnglish.create',compact('goInformation', 'training_id'));
        }

        if($goInformation->admin_id != Auth::user()->id){
            Session::flash('Msgerror', 'Access Denied');
            return redirect('/');
        }


        return redirect('/goInformationEnglish/'.$goInformation->id.'/edit'); 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $goInformation = GOInformation::where('admin_id', Auth::user()->id)->where('training_id', $request->training_id)->where('type', 2)->first();
        
        if($goInformation == null){
            $goInformation = new GOInformation();
            $goInformation->admin_id = Auth::user()->id;
            $goInformation->publish_date = date_format(date_create($request->publish_date),"Y/m/d");
            $goInformation->status = 0;
            $goInformation->type = 2;
            $goInformation->training_id = $request->training_id;
            $goInformation->go_number = $request->go_number;
            $goInformation->subject = $request->subject;
            $goInformation->details = $request->details;
            $goInformation->rules_regulations = $request->rules_regulations;
            $goInformation->kind_information = $request->kind_information;
            $goInformation->before_kind_information = $request->before_kind_information;
            $goInformation->save();

            userlog('GO information save '.$goInformation->id);

            Session::flash('Msgsuccess', 'GO Information saved successfully.');

            return redirect('/goInformationEnglish/'.$goInformation->id.'/edit');
        }else{
            $goInf = GOInformation::where('admin_id', Auth::user()->id)->where('training_id', $request->training_id)->where('type', 2)->first();

            $goInf->admin_id = Auth::user()->id;
            $goInf->publish_date = date_format(date_create($request->publish_date),"Y/m/d");
            $goInf->status = 0;
            $goInf->type = 2;
            $goInf->training_id = $request->training_id;
            $goInf->go_number = $request->go_number;
            $goInf->subject = $request->subject;
            $goInf->details = $request->details;
            $goInf->rules_regulations = $request->rules_regulations;
            $goInf->kind_information = $request->kind_information;
            $goInf->before_kind_information = $request->before_kind_information;
            $goInf->save();

            userlog('GO information update '.$goInf->id);

            Session::flash('Msgsuccess', 'GO Information updated successfully.');
            
            return redirect('/goInformationEnglish/'.$goInf->id.'/edit');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\GOInformation  $gOInformation
     * @return \Illuminate\Http\Response
     */
    public function show($go_inf)
    {
        $gOInformation = GOInformation::find($go_inf);

        return view('GOInformationEnglish.show', compact('gOInformation'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\GOInformation  $gOInformation
     * @return \Illuminate\Http\Response
     */
    public function edit(GOInformation $gOInformation, $goInformation_id)
    {
        $goInformation = GOInformation::find($goInformation_id);

        if($goInformation == null){
            $goInformation = GOInformationTemplate::where('admin_id', Auth::user()->id)->where('type', 2)->first();

            if($goInformation == null){
                return view('GOInformationTemplateEnglish.create');
            }
            if($goInformation->admin_id != Auth::user()->id){
                return redirect('/');
            }
            return view('GOInformationEnglish.create',compact('goInformation', 'training_id'));
        }

        if($goInformation->admin_id != Auth::user()->id){
            Session::flash('Msgerror', 'Access Denied');
            return redirect('/');
        }

        if($goInformation->status == 1){
            Session::flash('Msgerror', 'GO Information is locked.');
            return redirect('/');
        }

        return view('GOInformationEnglish.edit', compact('goInformation'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\GOInformation  $gOInformation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $gOInformation_id)
    {
        $goInf = GOInformation::find($gOInformation_id);

        if($goInf->status == 1){
            Session::flash('Msgerror', 'GO Information is already locked. Do not try anymore.');
            return redirect('/');
        }

        if($goInf->admin_id != Auth::user()->id){
            Session::flash('Msgerror', 'You do not have access of this Information.');
            return redirect('/');
        }

        $goInf = GOInformation::find($gOInformation_id);
        $goInf->admin_id = Auth::user()->id;
        $goInf->publish_date = date_format(date_create($request->publish_date),"Y/m/d");
        $goInf->status = 0;
        $goInf->type = 2;
        $goInf->training_id = $request->training_id;
        $goInf->go_number = $request->go_number;
        $goInf->subject = $request->subject;
        $goInf->details = $request->details;
        $goInf->rules_regulations = $request->rules_regulations;
        $goInf->kind_information = $request->kind_information;
        $goInf->before_kind_information = $request->before_kind_information;
        $goInf->save();

        Session::flash('Msgsuccess', 'GO Information updated successfully.');

        if($request->submit == 2){
            $goInf = GOInformation::find($gOInformation_id);
            $goInf->status = 1;
            $goInf->save();

            Session::flash('Msgsuccess', 'GO Information locked. You can not update any information.');
            return redirect('/goInformationEnglish/'.$goInf->id);
        }
        

        return redirect('/goInformationEnglish/'.$goInf->id.'/edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\GOInformation  $gOInformation
     * @return \Illuminate\Http\Response
     */
    public function destroy(GOInformation $gOInformation)
    {
        //
    }
}
