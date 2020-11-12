<?php

namespace App\Http\Controllers;

use App\Models\Organization;
use Illuminate\Http\Request;
use Auth;
use Session;

class OrganizationController extends Controller
{

    public function __construct()
    {
        $this->middleware(['auth', 'verify.superadmin']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $organizations = Organization::get();

        return view('organization.index', compact('organizations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Auth::user()->user_type != 1){
            return back();
        }
        return view('organization.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(Auth::user()->user_type != 1){
            return back();
        }
        $organization = new Organization();
        $organization->name = $request->name;
        $organization->name_bangla = $request->name_bangla;
        $organization->contact_no = $request->contact_no;
        $organization->email = $request->email;
        $organization->status = 1;
        $organization->created_by = Auth::user()->id;
        $organization->save();

        userlog('Organization create '.$organization->id);

        return redirect('/organization/'.$organization->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Organization  $organization
     * @return \Illuminate\Http\Response
     */
    public function show(Organization $organization)
    {
        return view('organization.show', compact('organization'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Organization  $organization
     * @return \Illuminate\Http\Response
     */
    public function edit(Organization $organization)
    {
        return view('organization.edit', compact('organization'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Organization  $organization
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $organization_id)
    {
        $organization = Organization::find($organization_id);
        $organization->name = $request->name;
        $organization->name_bangla = $request->name_bangla;
        $organization->contact_no = $request->contact_no;
        $organization->email = $request->email;
        $organization->status = $request->status;
        $organization->save();

        userlog('Organization update '.$organization->id);

        Session::flash('Msgsuccess', "Organization information updated successfully");
        return Redirect('organization/'.$organization->id);

        // return back()->with('Msgsuccess', 'Organization information updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Organization  $organization
     * @return \Illuminate\Http\Response
     */
    public function destroy(Organization $organization)
    {
        //
    }
}
