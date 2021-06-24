<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Training extends Model
{
    protected $fillable = ['training_calender_id','status', 'title', 'issue_no', 'issue_date', 'application_start_date', 'application_end_date', 'training_start_date', 'training_end_date', 'organization_id'];

    
    public function getAttachementInfo($training_id)
    {
    	$response = Attachment::where('reference_id', $training_id)->where('attachment_type', 1)->where('status', 1)->first();
        if($response){
        	return $response->filename;
        }
        else{
        	return '';
        }
    }
    public function getAdminInfo()
    {
        return $this->belongsTo('App\User', 'admin_id', 'id');
    }

    public function goInformation()
    {
        return $this->belongsTo('App\Models\GOInformation', 'id', 'training_id');
    }

    public function nominationsDetails(){
        return $this->hasMany(NominationDetails::class,'training_id');
    }
}
