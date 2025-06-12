<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserBadge extends Model
{
    //
    use HasFactory;
    
    public $timestamps = false;
    protected $fillable = ['badge_id', 'user_id', 'awarded_at'];
    public function user() { return $this->belongsTo(User::class); }
    public function badge() { return $this->belongsTo(Badge::class); }
}
