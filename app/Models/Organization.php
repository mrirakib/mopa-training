<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Organization extends Model
{
    protected $fillable = ['name','name_bangla','email','contact_no','created_by','status'];

    public function getUserInfo()
    {
        return $this->belongsTo('App\User', 'created_by', 'id');
    }
}
