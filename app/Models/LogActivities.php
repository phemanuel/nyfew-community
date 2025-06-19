<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class LogActivities extends Model
{
    //
    use HasFactory;
    
    protected $fillable = [
        'user_id',
        'ip_address',
        'activity',
        'activity_date',
    ];
}
