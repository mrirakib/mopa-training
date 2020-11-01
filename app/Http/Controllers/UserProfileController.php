<?php

namespace App\Http\Controllers;

use App\Models\UserProfile;
use Illuminate\Http\Request;
use Auth;
use Session;

class UserProfileController extends Controller
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

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $profile = UserProfile::where('user_id', Auth::user()->id)->where('status', 1)->first();

        if($profile == null){
            return view('userProfile.create');
        }
        return view('userProfile.edit', compact('profile'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $profile = UserProfile::where('user_id', Auth::user()->id)->where('status', 1)->first();
        if($profile == null){
            $profile = new UserProfile();
            $profile->user_id = Auth::user()->id;
            $profile->status = 1;
            $profile->name = $request->name;
            $profile->name_bangla = $request->name_bangla;
            $profile->department = $request->department;
            $profile->department_bangla = $request->department_bangla;
            $profile->designation = $request->designation;
            $profile->designation_bangla = $request->designation_bangla;
            $profile->contact_no = $request->contact_no;
            $profile->email = $request->email;
            $profile->save();

            userlog('User Profile information save '.$profile->id);

            Session::flash('Msgsuccess', 'Signatory information saved successfully.');
            return view('userProfile.show', compact('profile'));
        }else{
            $profile = UserProfile::where('user_id', Auth::user()->id)->where('status', 1)->first();
            $profile->user_id = Auth::user()->id;
            $profile->status = 1;
            $profile->name = $request->name;
            $profile->name_bangla = $request->name_bangla;
            $profile->department = $request->department;
            $profile->department_bangla = $request->department_bangla;
            $profile->designation = $request->designation;
            $profile->designation_bangla = $request->designation_bangla;
            $profile->contact_no = $request->contact_no;
            $profile->email = $request->email;
            $profile->save();

            userlog('User Profile information update '.$profile->id);

            Session::flash('Msgsuccess', 'Signatory information updated successfully.');
            return view('userProfile.show', compact('profile'));
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\UserProfile  $userProfile
     * @return \Illuminate\Http\Response
     */
    public function show($userProfile_id)
    {
        $profile = UserProfile::find($userProfile_id);

        if($profile->user_id != Auth::user()->id){
            Session::flash('Msgerror', 'Access Denied');
            return redirect('/');
        }

        return view('userProfile.show', compact('profile'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\UserProfile  $userProfile
     * @return \Illuminate\Http\Response
     */
    public function edit(UserProfile $userProfile, $userProfile_id)
    {
        $profile = UserProfile::find($userProfile_id);

        if($profile == null){
            return view('userProfile.create');
        }

        if($profile->user_id != Auth::user()->id){
            Session::flash('Msgerror', 'Access Denied');
            return redirect('/');
        }
        return view('userProfile.edit', compact('profile'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\UserProfile  $userProfile
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $userProfile_id)
    {
        $profile = UserProfile::find($userProfile_id);
        $profile->user_id = Auth::user()->id;
        $profile->status = 1;
        $profile->name = $request->name;
        $profile->name_bangla = $request->name_bangla;
        $profile->department = $request->department;
        $profile->department_bangla = $request->department_bangla;
        $profile->designation = $request->designation;
        $profile->designation_bangla = $request->designation_bangla;
        $profile->contact_no = $request->contact_no;
        $profile->email = $request->email;
        $profile->save();

        userlog('User Profile information update '.$profile->id);

        Session::flash('Msgsuccess', 'Signatory information updated successfully.');
        return view('userProfile.show', compact('profile'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\UserProfile  $userProfile
     * @return \Illuminate\Http\Response
     */
    public function destroy(UserProfile $userProfile)
    {
        //
    }
}
