<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Training extends Model
{
    protected $fillable = ['title','issue_no','issue_date','archive_date','status','remarks','admin_id'];

    
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
