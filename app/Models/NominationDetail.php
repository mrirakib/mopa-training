<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NominationDetail extends Model
{
    public function getAdminInfo()
    {
        return $this->belongsTo('App\User', 'admin_id', 'id');
    }
    public function getUserInfo()
    {
        return $this->belongsTo('App\User', 'user_id', 'id');
    }
    public function getTrainingInfo()
    {
        return $this->belongsTo('App\Models\Training', 'training_id', 'id');
    }

    public function getGOInfo($training_id)
    {
        $response = GOInformation::where('training_id', $training_id)->where('status', 1)->first();
        if($response){
            return $response->subject;
        }
        else{
            return '';
        }
    }
}
