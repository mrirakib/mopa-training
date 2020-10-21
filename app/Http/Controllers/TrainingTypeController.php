<?php

namespace App\Http\Controllers;

use App\Models\TrainingType;
use Illuminate\Http\Request;
use Auth;
use Session;

class TrainingTypeController extends Controller
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
        $training_types = TrainingType::get();

        return view('trainingType.index', compact('training_types'));
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
        return view('trainingType.create');
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
        $trainingType = new TrainingType();
        $trainingType->training_type = $request->training_type;
        $trainingType->status = 1;
        $trainingType->created_by = Auth::user()->id;
        $trainingType->save();

        return redirect('/trainingType/'.$trainingType->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\TrainingType  $trainingType
     * @return \Illuminate\Http\Response
     */
    public function show(TrainingType $trainingType)
    {
        return view('trainingType.show', compact('trainingType'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\TrainingType  $trainingType
     * @return \Illuminate\Http\Response
     */
    public function edit(TrainingType $trainingType)
    {
        return view('trainingType.edit', compact('trainingType'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\TrainingType  $trainingType
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TrainingType $trainingType)
    {
        $training_type = TrainingType::find($trainingType->id);
        $training_type->training_type = $request->training_type;
        $training_type->status = $request->status;
        $training_type->save();

        Session::flash('Msgsuccess', "Training type information updated successfully");
        return Redirect('trainingType/'.$trainingType->id);

        // return back()->with('Msgsuccess', 'Training type information updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\TrainingType  $trainingType
     * @return \Illuminate\Http\Response
     */
    public function destroy(TrainingType $trainingType)
    {
        //
    }
}
