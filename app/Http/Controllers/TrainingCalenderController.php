<?php

namespace App\Http\Controllers;

use App\Models\TrainingCalender;
use App\Models\UserInstitute;
use App\Models\Attachment;
use Illuminate\Http\Request;
use Auth;
use Session;

class TrainingCalenderController extends Controller
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
        $organization_ids = UserInstitute::where('user_id', Auth::id())->pluck('organization_id')->all();

        $trainingCalenders = TrainingCalender::whereIn('organization_id', $organization_ids)->get();

        return view('trainingCalender.index', compact('trainingCalenders'));

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
        $userInstitutes = UserInstitute::select('organization_id')->where('user_id', Auth::id())->get();
        return view('trainingCalender.create', compact('userInstitutes'));
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

        $data = request()->all();
        $data['issue_date'] = date_format(date_create($request->issue_date),"Y/m/d");
        $data['application_start_date'] = date_format(date_create($request->application_start_date),"Y/m/d");
        $data['application_end_date'] = date_format(date_create($request->application_end_date),"Y/m/d");
        $data['training_start_date'] = date_format(date_create($request->training_start_date),"Y/m/d");
        $data['training_end_date'] = date_format(date_create($request->training_end_date),"Y/m/d");
        $data['status'] = 0;
        $data['admin_id'] = Auth::id();

        $trainingCalender = TrainingCalender::create($data);

        $attachment1 = $request->file('attachment');
        if (isset($attachment1)) {
            $filename = time() . '.' . $attachment1->getClientOriginalName();
            $location = public_path('upload/');
            $attachment1->move($location, $filename);
            Attachment::create([
                'filename' => $filename,
                'status' => 1,
                'reference_id' => $trainingCalender->id,
                'attachment_type' => 2
            ])->save();
        }

        userlog('Training Calender create '.$trainingCalender->id);

        return redirect('trainingCalender');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\TrainingCalender  $trainingCalender
     * @return \Illuminate\Http\Response
     */
    public function show(TrainingCalender $trainingCalender)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\TrainingCalender  $trainingCalender
     * @return \Illuminate\Http\Response
     */
    public function edit(TrainingCalender $trainingCalender)
    {
        $userInstitutes = UserInstitute::select('organization_id')->where('user_id', Auth::id())->get();
        $userInstituteIds = UserInstitute::where('user_id', Auth::id())->pluck('organization_id')->all();

        $flag = false;

        if (array_search($trainingCalender->organization_id, $userInstituteIds) !== false) {
            //Find
            return view('trainingCalender.edit', compact('userInstitutes', 'trainingCalender'));
        } else {
            // Not Find
            Session::flash('Msgerror', 'Access Denied');
            return redirect('/');
        }

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\TrainingCalender  $trainingCalender
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TrainingCalender $trainingCalender)
    {
        if(!isAdmin()){
            Session::flash('Msgerror', 'Access Denied');
            return redirect('/');
        }

        $data = request()->all();
        $data['issue_date'] = date_format(date_create($request->issue_date),"Y/m/d");
        $data['application_start_date'] = date_format(date_create($request->application_start_date),"Y/m/d");
        $data['application_end_date'] = date_format(date_create($request->application_end_date),"Y/m/d");
        $data['training_start_date'] = date_format(date_create($request->training_start_date),"Y/m/d");
        $data['training_end_date'] = date_format(date_create($request->training_end_date),"Y/m/d");
        $data['status'] = 0;

        $trainingCalender = TrainingCalender::findOrFail($trainingCalender->id);

        $trainingCalender->update($data);

        $attachment1 = $request->file('attachment');
        if (isset($attachment1)) {
            Attachment::where('reference_id', $trainingCalender->id)->where('attachment_type', 2)->update(['status'=>0]);
            $filename = time() . '.' . $attachment1->getClientOriginalName();
            $location = public_path('upload/');
            $attachment1->move($location, $filename);
            Attachment::create([
                'filename' => $filename,
                'status' => 1,
                'reference_id' => $trainingCalender->id,
                'attachment_type' => 2
            ])->save();
        }

        userlog('Training Calender create '.$trainingCalender->id);

        return redirect('trainingCalender');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\TrainingCalender  $trainingCalender
     * @return \Illuminate\Http\Response
     */
    public function destroy(TrainingCalender $trainingCalender)
    {
        //
    }
}
