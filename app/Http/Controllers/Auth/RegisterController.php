<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Auth\Events\Registered;
use Auth;
use Session;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
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
        // $this->middleware('guest');
        $this->middleware('auth');
        // $this->middleware('guest', ['except' => ['getLogout', 'getRegister']]);

        $this->middleware(function ($request, $next) {
            if($request->user()->user_type <= 2) {
                return $next($request);
            } else {
                return redirect('/');
            }
        });

    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {

        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'name_bangla' => ['required', 'string', 'max:255'],
            'section' => ['required', 'string', 'max:255'],
            'section_bangla' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'user_type' => ['required'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        if(Auth::user()->user_type == 3){
            return back();
        }

        User::create([
            'name' => $data['name'],
            'name_bangla' => $data['name_bangla'],
            'section' => $data['section'],
            'section_bangla' => $data['section_bangla'],
            'email' => $data['email'],
            'user_type' => $data['user_type'],
            'created_by' => Auth::user()->id,
            'status' => 1,
            'password' => Hash::make($data['password']),
        ]);

        return redirect('register');
    }

     public function register(Request $request)
    {
        $this->validator($request->all())->validate();

        event(new Registered($user = $this->create($request->all())));

        //$this->guard()->login($user);

        //return $this->registered($request, $user)
        //                ?: redirect($this->redirectPath());

        // Session::flash('Msgsuccess', 'User created successfully');


        return redirect(route('register'))->with('Msgsuccess', 'User created successfully');
    }

}
