<?php

namespace App\Http\Controllers;

use App\User;
use App\Models\Training;
use App\Models\Organization;
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
        $organizations = Organization::where('status', 1)->get();

        $trainings = array();
        $english_trainings = array();
        foreach ($organizations as $rowdata) {
            //Bangla Training GO
            $q = Training::query();
            $q->where('status', 4)->where('organization_id', $rowdata->id)->orderBy('id', 'DESC');
            if(Auth::user()->user_type == 2){
                $q->where('admin_id', Auth::user()->id);
            }
            $q->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 1)->where('type', 1);
                });

            $trainings[$rowdata->id] = $q->get();
            //Bangla Training GO

            //English Training GO
            $q2 = Training::query();
            $q2->where('status', 4)->where('organization_id', $rowdata->id)->orderBy('id', 'DESC');
            if(Auth::user()->user_type == 2){
                $q2->where('admin_id', Auth::user()->id);
            }
            $q2->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 1)->where('type', 2);
                });

            $english_trainings[$rowdata->id] = $q2->get();
            //English Training GO
        }

        // //Bangla Training GO
        // $q = Training::query();
        // $q->where('status', 4)->orderBy('id', 'DESC');
        // if(Auth::user()->user_type == 2){
        //     $q->where('admin_id', Auth::user()->id);
        // }
        // $q->whereHas('goInformation', function ($query) {
        //         $query->where('status', '=', 1)->where('type', 1);
        //     });

        // $trainings = $q->get();
        // //Bangla Training GO

        // //English Training GO
        // $q2 = Training::query();
        // $q2->where('status', 4)->orderBy('id', 'DESC');
        // if(Auth::user()->user_type == 2){
        //     $q2->where('admin_id', Auth::user()->id);
        // }
        // $q2->whereHas('goInformation', function ($query) {
        //         $query->where('status', '=', 1)->where('type', 2);
        //     });

        // $english_trainings = $q2->get();
        // //English Training GO

        return view('go.index', compact('trainings', 'english_trainings', 'organizations'));
    }

    public function index2()
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
