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

    public function index()
    {
        return view('report.create');
    }

    public function create()
    {
        //
    }

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
            $q->where('name', 'LIKE', '%'.$request->name.'%');

        }

        if ($request->designation) {
            $q->where('designation', 'LIKE', '%'.$request->designation.'%');

        }

        if ($request->contact_no) {
            $q->where('contact_no', 'LIKE', '%'.$request->contact_no.'%');

        }

        if ($request->email) {
            $q->where('email', 'LIKE', '%'.$request->email.'%');
        }

        $results = $q->get();

        $id_no = $request->id_no;
        $name = $request->name;
        $designation = $request->designation;
        $contact_no = $request->contact_no;
        $email = $request->email;

        userlog('Training Report create.');

        return view('report.show', compact('results', 'id_no', 'name', 'designation', 'contact_no', 'email'));
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
