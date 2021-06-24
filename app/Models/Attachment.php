<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Attachment extends Model
{
    protected $fillable = ['filename', 'status', 'reference_id', 'attachment_type'];
}
