<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    //
    use HasFactory;
    
    protected $fillable = ['user_id', 'dob', 'gender', 'phone', 'social_links'];
    protected $casts = ['social_links' => 'array'];
    public function user() { return $this->belongsTo(User::class); }
}
