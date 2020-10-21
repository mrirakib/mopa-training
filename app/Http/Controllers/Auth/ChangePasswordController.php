<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\User;

class ChangePasswordController extends Controller
{
    public function __construct(){
		$this->middleware('auth');
	}
    public function index(){
    	return view('auth.passwords.change');
    }
    public function update(Request $request){
    	$this->validate($request, [
    		'oldPassword' => 'required',
    		'password' => 'required|confirmed|min:8|max:32'
    	]);

    	$hashedPassword = Auth::user()->password;

    	if(Hash::check($request->oldPassword, $hashedPassword)){
    		$user = User::find(Auth::id());
    		$user->password = Hash::make($request->password);
    		$user->save();

    		Auth::logout();

    		return redirect()->route('login')->with('successMsg', 'Password Updated Successfully');
    	}else{
    		return redirect()->back()->with('Msgerror', "Current Password is Invalid");
    	}
    }
    public function index2($user_id){
        $user = User::find($user_id);

        if($user == NULL){
            return redirect('/');
        }

        return view('auth.passwords.change2', compact('user'));
    }
    public function update2(Request $request){
        $this->validate($request, [
            'password' => 'required|confirmed|min:8|max:32',
            'user_id' => 'required'
        ]);
        $user = User::find($request->user_id);

        if($user == NULL){
            return redirect('/');
        }

        if(Auth::user()->user_type == 3){
            return redirect('/');
        }

        if(Auth::user()->user_type == 2 && $user->user_type < 3){
            return redirect('/');
        }

        $user = User::find($request->user_id);
        $user->password = Hash::make($request->password);
        $user->save();

        return back()->with('MesSuccess', 'Password Reseted Successfully');
    }
}
