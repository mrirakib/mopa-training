<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use Session;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::user()->user_type == 1){
            $users = User::where('status', '>', 0)->where('user_type', '>', 1)->get();
        }elseif(Auth::user()->user_type == 2){
            $users = User::where('status', '>', 0)->where('user_type','>', 2)->get();
        }else{
            return back();
        }

        return view('user.index', compact('users'));
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
        if(Auth::user()->user_type > 2){
            return redirect('/');
        }
        $user = User::find($id);

        if($user == null){
            return redirect('/')->with('MsgError', "User not found");
        }

        return view('user.show', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(Auth::user()->user_type > 2){
            return back();
        }
        $user = User::find($id);

        if($user == null){
            return back()->with('MsgError', "User not found");
        }

        return view('user.edit', compact('user'));
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
        $user = User::find($id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->user_type = $request->user_type;
        $user->status = $request->status;
        $user->save();

        userlog('User information update '.$user->id);

        Session::flash('Msgsuccess', 'User Information updated successfully');

        return redirect('/userlist/'.$id);
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

    public function userPasswordReset($id)
    {
        if(Auth::user()->user_type > 2){
            return redirect('/');
        }
        $user = User::find($id);

        if($user == null){
            return redirect('/')->with('MsgError', "User not found");
        }

        userlog('User password reset '.$user->id);

        return view('user.reset', compact('user'));
    }
}
