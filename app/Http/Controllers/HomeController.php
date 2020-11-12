<?php

namespace App\Http\Controllers;

use App\User;
use App\Models\Training;
use App\Models\GOInformation;
use Illuminate\Http\Request;
use Auth;
use Session;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['auth']);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if(Auth::user()->user_type == 1){
            $total_training = Training::count();
            $draft_training = Training::where('status', 0)->count();
            $open_training = Training::where('status', 1)->count();
            $close_training = Training::where('status', 2)->count();
            $primary_selection_training = Training::where('status', 3)->count();
            $final_selection_training = Training::where('status', 4)->count();
            $go_bangla_draft = GOInformation::where('status', 0)->where('type', 1)->count();
            $go_bangla_final = GOInformation::where('status', 1)->where('type', 1)->count();
            $go_english_draft = GOInformation::where('status', 0)->where('type', 2)->count();
            $go_english_final = GOInformation::where('status', 1)->where('type', 2)->count();

            $user = User::count();
            $user_super = User::where('user_type', 1)->count();
            $user_admin = User::where('user_type', 2)->count();
            $user_normal = User::where('user_type', 3)->count();            
        }elseif(Auth::user()->user_type == 2){
            $total_training = Training::where('admin_id', Auth::user()->id)->count();
            $draft_training = Training::where('status', 0)->where('admin_id', Auth::user()->id)->count();
            $open_training = Training::where('status', 1)->where('admin_id', Auth::user()->id)->count();
            $close_training = Training::where('status', 2)->where('admin_id', Auth::user()->id)->count();
            $primary_selection_training = Training::where('status', 3)->where('admin_id', Auth::user()->id)->count();
            $final_selection_training = Training::where('status', 4)->where('admin_id', Auth::user()->id)->count();

            $q = Training::query();
            $q->where('admin_id', Auth::user()->id)->where('status', 4)->orderBy('id', 'DESC');
            $q->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 0)->where('type', 1);
                });

            $go_bangla_draft = $q->count();

            $q = Training::query();
            $q->where('admin_id', Auth::user()->id)->where('status', 4)->orderBy('id', 'DESC');
            $q->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 1)->where('type', 1);
                });

            $go_bangla_final = $q->count();

            $q2 = Training::query();
            $q2->where('admin_id', Auth::user()->id)->where('status', 4)->orderBy('id', 'DESC');
            $q2->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 0)->where('type', 2);
                });

            $go_english_draft = $q2->count();

            $q2 = Training::query();
            $q2->where('admin_id', Auth::user()->id)->where('status', 4)->orderBy('id', 'DESC');
            $q2->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 1)->where('type', 2);
                });

            $go_english_final = $q2->count();

            $user = 0;
            $user_super = 0;
            $user_admin = 0;
            $user_normal = 0;
        }else{
            return redirect('/training');
        }

        return view('home', compact('total_training', 'draft_training', 'open_training', 'close_training', 'primary_selection_training', 'final_selection_training', 'go_bangla_draft', 'go_bangla_final', 'go_english_draft', 'go_english_final', 'user', 'user_admin', 'user_normal', 'user_super'));
    }
}
