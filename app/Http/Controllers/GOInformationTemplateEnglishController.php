<?php

namespace App\Http\Controllers;

use App\Models\GOInformationTemplate;
use Illuminate\Http\Request;
use Auth;
use Session;

class GOInformationTemplateEnglishController extends Controller
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
        $goInformation = GOInformationTemplate::where('admin_id', Auth::user()->id)->where('type', 2)->first();

        if($goInformation == null){
            return view('GOInformationTemplateEnglish.create');
        }
        if($goInformation->admin_id != Auth::user()->id){
            return redirect('/');
        }

        return view('GOInformationTemplateEnglish.edit',compact('goInformation'));        
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
        $goInformation = new GOInformationTemplate();
        $goInformation->admin_id = Auth::user()->id;
        $goInformation->subject = $request->subject;
        $goInformation->details = $request->details;
        $goInformation->rules_regulations = $request->rules_regulations;
        $goInformation->kind_information = $request->kind_information;
        $goInformation->before_kind_information = $request->before_kind_information;
        $goInformation->type = 2;
        $goInformation->save();

        userlog('GO information (template) save '.$goInformation->id);

        Session::flash('Msgsuccess', 'GO Information saved successfully.');

        return redirect('/goInformationTemplateEnglish/'.$goInformation->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\GOInformationTemplate  $gOInformation
     * @return \Illuminate\Http\Response
     */
    public function show($gOInformation_id)
    {
        $gOInformation = GOInformationTemplate::find($gOInformation_id);

        return view('GOInformationTemplateEnglish.show', compact('gOInformation'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\GOInformationTemplate  $gOInformation
     * @return \Illuminate\Http\Response
     */
    public function edit(GOInformationTemplate $gOInformation)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\GOInformationTemplate  $gOInformation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $gOInformation_id)
    {
        $goInf = GOInformationTemplate::where('admin_id', Auth::user()->id)->where('type', 2)->first();
        $goInf->admin_id = Auth::user()->id;
        $goInf->subject = $request->subject;
        $goInf->details = $request->details;
        $goInf->rules_regulations = $request->rules_regulations;
        $goInf->kind_information = $request->kind_information;
        $goInf->before_kind_information = $request->before_kind_information;
        $goInf->type = 2;
        $goInf->save();

        userlog('GO information (template) update '.$goInf->id);

        Session::flash('Msgsuccess', 'GO Information updated successfully.');
        
        return redirect('/goInformationTemplateEnglish/'.$goInf->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\GOInformationTemplate  $gOInformation
     * @return \Illuminate\Http\Response
     */
    public function destroy(GOInformationTemplate $gOInformation)
    {
        //
    }
}
