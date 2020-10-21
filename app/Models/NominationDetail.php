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
}
