<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EntryUserApprovalAuthorityMapping extends Model
{
    protected $fillable = ['approval_authority_user_id','entry_user_id'];

    public function getApprovalAuthorityUserInfo()
    {
        return $this->belongsTo('App\User', 'approval_authority_user_id', 'id');
    }
    public function getEntryUserInfo()
    {
        return $this->belongsTo('App\User', 'entry_user_id', 'id');
    }
}
