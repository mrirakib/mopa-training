<?php

namespace App\Http\Controllers;

use App\Models\EntryUserApprovalAuthorityMapping;
use App\User;
use Illuminate\Http\Request;
use Auth;
use Session;

class EntryUserApprovalAuthorityMappingController extends Controller
{

    public function __construct()
    {
        $this->middleware(['auth']);
    }

    public function index()
    {
        $userMapping = EntryUserApprovalAuthorityMapping::select('id', 'entry_user_id', 'approval_authority_user_id')->get();

        return view('EntryUserApprovalAuthorityMapping.index', compact('userMapping'));
    }

    public function create()
    {
        $approvalAuthorityUsers = User::select('id', 'name', 'section')->where('user_type', 3)->where('status', 1)->get();
        $entryUsers = User::select('id', 'name', 'section')->where('user_type', 4)->where('status', 1)->get();
        return view('EntryUserApprovalAuthorityMapping.create', compact('approvalAuthorityUsers', 'entryUsers'));
    }

    public function store(Request $request)
    {
        $approval_authority_user_id = $request->approval_authority_user_id;
        $entry_user_id = $request->entry_user_id;

        $userMapping = EntryUserApprovalAuthorityMapping::where('entry_user_id', $entry_user_id)->where('approval_authority_user_id', $approval_authority_user_id)->count();

        if($userMapping == 0){
            $userMapping = new EntryUserApprovalAuthorityMapping();
            $userMapping->approval_authority_user_id = $approval_authority_user_id;
            $userMapping->entry_user_id = $entry_user_id;
            $userMapping->save();
        }

        userlog('Entry User and approval authority user Mapping Successfully');

        Session::flash('Msgsuccess', 'Entry User and approval authority user Mapping Successfully');

        return redirect('/entry-user-approval-authority');
    }

    public function show(EntryUserApprovalAuthorityMapping $userInstitute)
    {
        //
    }
    public function edit(EntryUserApprovalAuthorityMapping $entryUserApprovalAuthority)
    {
        $approvalAuthorityUsers = User::select('id', 'name', 'section')->where('user_type', 3)->where('status', 1)->get();
        $entryUsers = User::select('id', 'name', 'section')->where('user_type', 4)->where('status', 1)->get();

        $userMapping = EntryUserApprovalAuthorityMapping::findOrFail($entryUserApprovalAuthority->id);

        return view('EntryUserApprovalAuthorityMapping.edit', compact('userMapping', 'approvalAuthorityUsers', 'entryUsers'));
    }

    public function update(Request $request, EntryUserApprovalAuthorityMapping $entryUserApprovalAuthority)
    {
        $approval_authority_user_id = $request->approval_authority_user_id;

        $entryUserApprovalAuthority->approval_authority_user_id = $approval_authority_user_id;
        $entryUserApprovalAuthority->save();

        userlog('Entry User and approval authority user Mapping Successfully');

        Session::flash('Msgsuccess', 'Entry User and approval authority user Mapping Successfully');

        return redirect('/entry-user-approval-authority');
    }

    public function destroy(EntryUserApprovalAuthorityMapping $entryUserApprovalAuthority)
    {
        //
    }

    public function getApprovalAuthorityInfo(Request $request){
        $entry_user_id = $request->entry_user_id;
        $userMapping = EntryUserApprovalAuthorityMapping::where('entry_user_id', $entry_user_id)->count();

        if($userMapping > 0){
            $userMapping = EntryUserApprovalAuthorityMapping::where('entry_user_id', $entry_user_id)->first();

            return $userMapping->approval_authority_user_id;
        }else{
            return 0;
        }
    }
}
