<?php

namespace App\Http\Controllers;

use App\User;
use App\Models\Training;
use App\Models\Attachment;
use App\Models\NominationDetail;
use Illuminate\Http\Request;
use Auth;
use Session;

class GOController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth', 'verify.adminabove']);
    }

    public function index()
    {
        if(Auth::user()->user_type == 2){
            $q = Training::query();
            $q->where('admin_id', Auth::user()->id)->where('status', 4)->orderBy('id', 'DESC');
            $q->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 1)->where('type', 1);
                });

            $trainings = $q->get();

            $q2 = Training::query();
            $q2->where('admin_id', Auth::user()->id)->where('status', 4)->orderBy('id', 'DESC');
            $q2->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 1)->where('type', 2);
                });

            $english_trainings = $q2->get();
        }else{
            $q = Training::query();
            $q->where('status', 4)->orderBy('id', 'DESC');
            $q->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 1)->where('type', 1);
                });

            $trainings = $q->get();

            $q2 = Training::query();
            $q2->where('status', 4)->orderBy('id', 'DESC');
            $q2->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 1)->where('type', 2);
                });

            $english_trainings = $q2->get();

        }

        return view('go.index', compact('trainings', 'english_trainings'));
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
