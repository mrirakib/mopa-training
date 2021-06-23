<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserInstitute extends Model
{
    protected $fillable = ['organization_id','user_id'];

    public function getUserInfo()
    {
        return $this->belongsTo('App\User', 'user_id', 'id');
    }

    public function getOrganizationInfo()
    {
        return $this->belongsTo('App\Models\Organization', 'organization_id', 'id');
    }
}
