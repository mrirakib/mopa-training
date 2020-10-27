<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Training;
use App\Models\NominationDetail;
use Illuminate\Support\Facades\Input;
use Auth;
use Session;


class ReportController extends Controller
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
        return view('report.create');
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
        if($request->id_no == null && $request->name == null && $request->designation == null && $request->contact_no == null && $request->email == null){
            Session::flash('Msgerror', 'Please input at least 1 field.');
            return redirect('/report');
        }


        if(Auth::user()->user_type == 1){
            $training_ids = Training::where('status', 4)->pluck('id');
        }else{
            $training_ids = Training::where('status', 4)->where('admin_id', Auth::user()->id)->pluck('id');
        }

        $q = NominationDetail::query();

        $q->whereIn('training_id', $training_ids)->where('status', 1);

        if ($request->id_no != null) {
            $q->where('id_no', $request->id_no);

        }

        if ($request->name) {
            $q->where('name', LIKE, '%'.$request->name.'%');

        }

        if ($request->designation) {
            $q->where('designation', LIKE, '%'.$request->designation.'%');

        }

        if ($request->contact_no) {
            $q->where('contact_no', LIKE, '%'.$request->contact_no.'%');

        }

        if ($request->designation) {
            $q->where('email', LIKE, '%'.$request->designation.'%');
        }

        $results = $q->get();

        return view('report.show', compact('results'));
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
