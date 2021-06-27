<?php

namespace App\Http\Controllers;

use App\User;
use App\Models\Training;
use App\Models\Organization;
use App\Models\UserInstitute;
use App\Models\Attachment;
use App\Models\NominationDetail;
use App\Models\Nomination;
use App\Models\CadreList;
use App\Models\TrainingCalender;

use Illuminate\Http\Request;
use Auth;
use Session;

class TrainingController extends Controller
{

    public function __construct()
    {
        $this->middleware(['auth']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(isSuperAdmin()){
            $trainings = Training::orderBy('id', 'DESC')->get();
        }
        if(isAdmin()){
            $organization_ids = UserInstitute::where('user_id', Auth::id())->pluck('organization_id')->all();

            $trainings = Training::whereIn('organization_id', $organization_ids)->orderBy('id', 'DESC')->get();
        }
        if(isApprovalAuthority()){
            $trainings = Training::where('status', '>', 0)->orderBy('id', 'DESC')->get();
        }

        if(isEntryUser()){
            $trainings = Training::where('status', '>', 0)->orderBy('id', 'DESC')->get();
        }        

        return view('training.index', compact('trainings'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(!isAdmin()){
            Session::flash('Msgerror', 'Access Denied');
            return redirect('/');
        }
        $organizations = Organization::where('status', 1)->get();
        return view('training.create', compact('organizations'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(!isAdmin()){
            Session::flash('Msgerror', 'Access Denied');
            return redirect('/');
        }

        $trainingCalender = TrainingCalender::findOrFail($request->training_calender_id);
        $trainingCalender->status = 2;
        $trainingCalender->save();

        $input = $request->all();
        $input['issue_date'] = date_format(date_create($request->issue_date),"Y/m/d");
        $input['application_start_date'] = date_format(date_create($request->application_start_date),"Y/m/d");
        $input['application_end_date'] = date_format(date_create($request->application_end_date),"Y/m/d");
        $input['training_start_date'] = date_format(date_create($request->training_start_date),"Y/m/d");
        $input['training_end_date'] = date_format(date_create($request->training_end_date),"Y/m/d");
        $input['status'] = 0;
        $input['admin_id'] = Auth::user()->id;

        $training = Training::create($input);

        $attachment1 = $request->file('attachment');
        if (isset($attachment1)) {
            $filename = time() . '.' . $attachment1->getClientOriginalName();
            $location = public_path('upload/');
            $attachment1->move($location, $filename);
            Attachment::create([
                'filename' => $filename,
                'status' => 1,
                'reference_id' => $training->id,
                'attachment_type' => 1
            ])->save();
        }

        userlog('Training create '.$training->id);

        return redirect('training');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Training  $training
     * @return \Illuminate\Http\Response
     */
    public function show(Training $training)
    {
        $flag = false;

        $userInstituteIds = UserInstitute::where('user_id', Auth::id())->pluck('organization_id')->all();

        if(isSuperAdmin()){
            $flag = true;
        }elseif(isAdmin() && (array_search($training->organization_id, $userInstituteIds) !== false)){
            $flag = true;
        }elseif(isApprovalAuthority()){
            $flag = false;
        }

        if(!$flag){
            return back();
        }

        if($training->status == 4){
            $nominations = NominationDetail::where('training_id', $training->id)->where('status', 1)->where('deleted_at', NULL)->get();
        }else{
            $nominations = NominationDetail::where('training_id', $training->id)->where('deleted_at', NULL)->get();
        }

        if($training->status >= 2){
            return view('training.selection', compact('training', 'nominations'));
        }
        return view('training.show', compact('training', 'nominations'));
    }

    public function trainingdetails($training_id)
    {
        $training = Training::find($training_id);

        if($training == null){
            Session::flash('Msgerror', 'Training not found.');
            return rdirect('/');
        }
        
        $flag = false;

        if(isApprovalAuthority()){
            $flag = true;
        }
        if($training->status > 1){
            $flag = true;
        }

        if(!$flag){
            return back();
        }

        $nominations = NominationDetail::where('training_id', $training->id)->where('user_id', Auth::user()->id)->where('deleted_at', NULL)->get();

        return view('training.details', compact('training', 'nominations'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Training  $training
     * @return \Illuminate\Http\Response
     */
    public function edit(Training $training)
    {
        $flag = false;

        // $training = Training::find($training->id);
        if($training->status != 0){
            Session::flash('Msgerror', 'Access Denied.');
            return redirect('/');
        }
        if(isAdmin() && trainingAuth($training)){
            $flag = true;
        }

        if(!$flag){
            Session::flash('Msgerror', 'Access Denied.');
            return redirect('/');
        }

        $organizations = Organization::where('status', 1)->get();

        return view('training.edit', compact('training', 'organizations'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Training  $training
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Training $training)
    {
        $flag = false;

        if(isAdmin() && trainingAuth($training)){
            $flag = true;
        }

        if(!$flag){
            Session::flash('Msgerror', 'Access Denied.');
            return redirect('/');
        }

        $delete_attachment = $request->delete_attachment;

        if($delete_attachment){
            $attachment = Attachment::where('training_id', $training->id)->where('status', 0)->first();
            $attachment->status = 1;
            $attachment->save();
        }

        $training = Training::find($training->id);
        $training->title = $request->title;
        $training->issue_no = $request->issue_no;
        $training->issue_date = date_format(date_create($request->issue_date),"Y/m/d");
        $training->archive_date = date_format(date_create($request->archive_date),"Y/m/d");
        $training->remarks = $request->remarks;
        $training->organization_id = $request->organization_id;
        $training->status = 0;
        $training->save();

        $attachment1 = $request->file('attachment');
        if (isset($attachment1)) {
            $filename = time() . '.' . $attachment1->getClientOriginalName();
            $location = public_path('upload/');
            $attachment1->move($location, $filename);
            Attachment::create([
                'filename' => $filename,
                'status' => 1,
                'reference_id' => $training->id,
                'attachment_type' => 1
            ])->save();
        }

        userlog('Training update '.$training->id);

        return redirect('training');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Training  $training
     * @return \Illuminate\Http\Response
     */
    public function destroy(Training $training)
    {
        //
    }
    public function publishTraining($training_id)
    {
        $training = Training::find($training_id);

        if($training == null){
            Session::flash('Msgerror', 'Training not found');
            return redirect('/');
        }

        $flag = false;

        if(isAdmin()){
            $flag = true;
        }

        if(!$flag){
            Session::flash('Msgerror', 'Access Denied.');
            return redirect('/');
        }

        $training->status = 1;
        $training->save();

        userlog('Training publish '.$training->id);

        return redirect('training');
    }
    public function closeTraining($training_id)
    {
        $training = Training::find($training_id);
        if($training == null){
            Session::flash('Msgerror', 'Training not found');
            return redirect('/');
        }

        $flag = false;

        if(isAdmin() && trainingAuth($training)){
            $flag = true;
        }

        if(!$flag){
            Session::flash('Msgerror', 'Access Denied.');
            return redirect('/');
        }
        $training->status = 2;
        $training->save();

        userlog('Training close '.$training->id);

        return redirect('training');
    }
    public function deleteTraining($training_id)
    {
        $training = Training::find($training_id);
        if($training == null){
            Session::flash('Msgerror', 'Training not found');
            return redirect('/');
        }

        $flag = false;

        if(isAdmin() && trainingAuth($training)){
            $flag = true;
        }

        if(!$flag){
            Session::flash('Msgerror', 'Access Denied.');
            return redirect('/');
        }
        $training->status = 5;
        $training->save();

        userlog('Training delete '.$training->id);

        return redirect('training');
    }

    public function nominationTraining($training_id)
    {
        $flag = true;
        if(isApprovalAuthority() || isEntryUser()){
            $flag = false;
        }
        if($flag){
            return back();
        }

        $training = Training::findOrFail($training_id);

        if($training == NULL){
            Session::flash('Msgerror', 'This training is not available.');
            return redirect('');
        }
        if($training->status != 1){
            Session::flash('Msgerror', 'This training has already closed.');
            return redirect('');
        }

        $nominations = NominationDetail::where('training_id', $training_id)->where('user_id', Auth::user()->id)->where('deleted_at', null)->get();

        $cadre_lists = CadreList::get();

        return view('nomination.create', compact('training', 'nominations', 'cadre_lists'));
    }

    public function nominationTrainingShow($training_id)
    {
        $flag = true;
        if(isApprovalAuthority() || isEntryUser()){
            $flag = false;
        }
        if($flag){
            return back();
        }

        $training = Training::findOrFail($training_id);
        // $training = Training::where('id', $training_id)->where('status', 1)->get();


        if($training == NULL){
            Session::flash('Msgerror', 'This training is not available.');
            return redirect('');
        }
        if($training->status != 1){
            Session::flash('Msgerror', 'This training has already closed.');
            return redirect('');
        }

        $nominations = NominationDetail::where('training_id', $training_id)->where('deleted_at', null)->get();

        $nomination = Nomination::where('training_id', $training_id)->first();
        if($nomination->status > 2){
            return view('nomination.view', compact('training', 'nominations', 'nomination'));
        }else{
            return view('nomination.view2', compact('training', 'nominations', 'nomination'));
        }
    }

    public function nominationTrainingSendToApprovalAuthority($training_id)
    {
        $flag = true;
        if(isApprovalAuthority() || isEntryUser()){
            $flag = false;
        }
        if($flag){
            return back();
        }

        $training = Training::findOrFail($training_id);

        if($training == NULL){
            Session::flash('Msgerror', 'This training is not available.');
            return redirect('');
        }
        if($training->status != 1){
            Session::flash('Msgerror', 'This training has already closed.');
            return redirect('');
        }

        $nomination = Nomination::where('training_id', $training_id)->update(['status'=>1]);

        $nomination_details = NominationDetail::where('training_id', $training_id)->where('deleted_at', null)->update(['status'=>1]);
        $nominations = NominationDetail::where('training_id', $training_id)->where('deleted_at', null)->get();

        return redirect('nominationTrainingShow/'.$training_id);
    }

    public function nominationTrainingApprovedAndSendToAdmin($training_id)
    {
        $flag = true;
        if(isApprovalAuthority() || isEntryUser()){
            $flag = false;
        }
        if($flag){
            return back();
        }

        $training = Training::findOrFail($training_id);

        if($training == NULL){
            Session::flash('Msgerror', 'This training is not available.');
            return redirect('');
        }
        if($training->status != 1){
            Session::flash('Msgerror', 'This training has already closed.');
            return redirect('');
        }

        $nomination = Nomination::where('training_id', $training_id)->update(['status'=>2]);

        $nomination_details = NominationDetail::where('training_id', $training_id)->where('deleted_at', null)->update(['status'=>2]);
        $nominations = NominationDetail::where('training_id', $training_id)->where('deleted_at', null)->get();

        return redirect('nominationTrainingShow/'.$training_id);
    }

    public function nominationTrainingApproveDraft(Request $request)
    {
        $flag = true;
        if(isApprovalAuthority() || isEntryUser()){
            $flag = false;
        }
        if($flag){
            return back();
        }
        $training_id = $request->input('training_id');
        $id_no = $request->input('id_no');

        $training = Training::findOrFail($training_id);

        if($training == NULL){
            Session::flash('Msgerror', 'This training is not available.');
            return redirect('');
        }

        NominationDetail::where('training_id', $training_id)->where('deleted_at', null)->whereIn('id', $id_no)->update(['stage_status' => 1]);

        NominationDetail::where('training_id', $training_id)->where('deleted_at', null)->whereNotIn('id', $id_no)->update(['stage_status' => 0]);

        return redirect('nominationTrainingShow/'.$training_id);
    }

    public function trainingMakeFinal($training_id)
    {
        $training = Training::find($training_id);

        if($training == null){
            Session::flash('Msgerror', 'Training not found');
            return redirect('/');
        }

        $flag = false;

        if(isAdmin() && trainingAuth($training)){
            $flag = true;
        }

        if(!$flag){
            Session::flash('Msgerror', 'Access Denied.');
            return redirect('/');
        }

        if($training == NULL){
            Session::flash('Msgerror', 'This training is not available. Do not try anymore.');
            return redirect('');
        }
        if($training->status < 2){
            Session::flash('Msgerror', 'This training has not closed yet. Do not try anymore.');
            return redirect('');
        }
        if($training->status == 2 ){
            Session::flash('Msgerror', 'This training is in Closed stage. Make primary selection first.');
            return redirect('');
        }
        if($training->status > 3 ){
            Session::flash('Msgerror', 'This training process has finally finished. Do not try anymore.');
            return redirect('');
        }

        Training::where('id', $training_id)->update(['status' => 4]);

        userlog('Training make final '.$training->id);

        return redirect('/training/'.$training_id)->with('Msgsuccess', 'Congratulations. Training process has finally finished.');
    }
}
