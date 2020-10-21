<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Training extends Model
{
    protected $fillable = ['title','issue_no','issue_date','archive_date','status','remarks','admin_id'];

    
    public function getAttachementInfo($training_id)
    {
    	$response = Attachment::where('training_id', $training_id)->where('status', 0)->first();
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
}
