<?php

namespace App\Http\Controllers;

use App\Models\UserInstitute;
use App\Models\Organization;
use App\User;
use Illuminate\Http\Request;
use Auth;
use Session;

class UserInstituteController extends Controller
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
        $userInstitutes = UserInstitute::select('id', 'user_id', 'organization_id')->get();

        return view('userInstitute.index', compact('userInstitutes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $organizations = Organization::select('id', 'name')->where('status', 1)->get();
        $users = User::select('id', 'name')->where('user_type', 2)->where('status', 1)->get();
        return view('userInstitute.create', compact('organizations', 'users'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $organization_id = $request->organization_id;
        $user_id = $request->user_id;

        $userInstituteCount = userInstitute::where('user_id', $user_id)->where('organization_id', $organization_id)->count();

        if($userInstituteCount == 0){
            $userInstitute = new UserInstitute();
            $userInstitute->organization_id = $organization_id;
            $userInstitute->user_id = $user_id;
            $userInstitute->save();
        }

        userlog('User Institute Mapping Successfully');

        Session::flash('Msgsuccess', 'User Institute Mapping Successfully');

        return redirect('/userInstitute');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\UserInstitute  $userInstitute
     * @return \Illuminate\Http\Response
     */
    public function show(UserInstitute $userInstitute)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\UserInstitute  $userInstitute
     * @return \Illuminate\Http\Response
     */
    public function edit(UserInstitute $userInstitute)
    {
        $organizations = Organization::select('id', 'name')->where('status', 1)->get();
        $users = User::select('id', 'name')->where('user_type', 2)->where('status', 1)->get();

        return view('userInstitute.edit', compact('userInstitute', 'organizations', 'users'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\UserInstitute  $userInstitute
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, UserInstitute $userInstitute)
    {
        $organization_id = $request->organization_id;
        $user_id = $request->user_id;
        
        $userInstitute->organization_id = $organization_id;
        $userInstitute->user_id = $user_id;
        $userInstitute->save();

        userlog('User Institute Mapping Successfully');

        Session::flash('Msgsuccess', 'User Institute Mapping Successfully');

        return redirect('/userInstitute');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\UserInstitute  $userInstitute
     * @return \Illuminate\Http\Response
     */
    public function destroy(UserInstitute $userInstitute)
    {
        //
    }

    public function getUserInstituteInfo(Request $request){
        $user_id = $request->user_id;
        $userInstituteCount = UserInstitute::where('user_id', $user_id)->count();

        if($userInstituteCount > 0){
            $userInstituteInfo = UserInstitute::where('user_id', $user_id)->first();

            return $userInstituteInfo->organization_id;
        }else{
            return 0;
        }
    }
}
