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
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::user()->user_type == 2){
            // $trainings = Training::where('trainings.admin_id', Auth::user()->id)->where('trainings.status', 4)->orderBy('trainings.id', 'DESC')->leftJoin('g_o_information', 'g_o_information.training_id', '=', 'trainings.id')->where('g_o_information.status', 1)->get();
            $q = Training::query();
            $q->where('admin_id', Auth::user()->id)->where('status', 4)->orderBy('id', 'DESC');
            $q->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 1);
                });

            $trainings = $q->get();
        }else{
            $q = Training::query();
            $q->where('status', 4)->orderBy('id', 'DESC');
            $q->whereHas('goInformation', function ($query) {
                    $query->where('status', '=', 1);
                });

            $trainings = $q->get();

            // $trainings = Training::where('status', 4)->orderBy('id', 'DESC')->leftJoin('g_o_information', 'g_o_information.training_id', '=', 'trainings.id')->where('g_o_information.status', 1)->get();
        }

        userlog('GO View');

        return view('go.index', compact('trainings'));
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
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
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
}
