<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Auth;
use App\Rules\Captcha;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function login(Request $request)
    {
        $this->validate($request, [
                'email' => 'required|email|max:255',
                'password' => 'required|string|min:6',
                // 'g-recaptcha-response' => new Captcha(),
            ]);

        $this->validateLogin($request);

        if ($this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);

            return $this->sendLockoutResponse($request);
        }


        if(Auth::attempt(['email' => $request->email, 'password' => $request->password, 'status' => 1], $request->remember)) {
            // return redirect()->intended('dashboard');
        }  else {
            $this->incrementLoginAttempts($request);
            if(Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
                // return redirect()->intended('dashboard');
                Auth::logout();
                return back()->with('MsgError', 'Your account is Inactive or not verified. Contact with Admin.');
            }  else {
                $this->incrementLoginAttempts($request);
                return back()->with('MsgError', 'Incorrect username or password');
            }

            return back()->with('MsgError', 'Your account is Inactive or not verified. Contact with Admin.');
        }

        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            // return redirect()->intended('dashboard');
        
        }  else {
            $this->incrementLoginAttempts($request);
            return back()->with('MsgError', 'Incorrect username or password');
        }


       $this->incrementLoginAttempts($request);
       return $this->sendFailedLoginResponse($request);
    }
}
