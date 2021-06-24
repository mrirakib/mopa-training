<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TrainingCalender extends Model
{
    protected $fillable = ['organization_id','financial_year','residence_type_id','attaindance_type_id','title','trainee_number','admin_id','issue_no','trainee_level','issue_date','application_start_date','application_end_date','training_start_date','training_end_date','status','remarks'];

    
    public function getAttachementInfo($training_calender_id)
    {
    	$response = Attachment::where('reference_id', $training_calender_id)->where('attachment_type', 2)->where('status', 1)->first();
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

    public function getOrganizationInfo()
    {
        return $this->belongsTo('App\Models\Organization', 'organization_id', 'id');
    }

    public function nominationsDetails(){
        return $this->hasMany(NominationDetails::class,'training_id');
    }
}
