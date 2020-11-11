<?php

namespace App\Http\Controllers;

use App\User;
use App\Models\Training;
use App\Models\TrainingType;
use App\Models\Attachment;
use App\Models\NominationDetail;
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

        return view('home', compact('total_training', 'draft_training', 'open_training', 'close_training', 'primary_selection_training', 'final_selection_training', 'go_bangla_draft', 'go_bangla_final', 'go_english_draft', 'go_english_final', 'user', 'user_admin', 'user_normal', 'user_super'));
    }
}
