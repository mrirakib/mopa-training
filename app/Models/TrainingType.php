<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TrainingType extends Model
{
    protected $fillable = ['training_type','created_by','status'];

    public function getUserInfo()
    {
        return $this->belongsTo('App\User', 'created_by', 'id');
    }
}
