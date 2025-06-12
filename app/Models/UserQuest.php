<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserQuest extends Model
{
    //
    use HasFactory;
    
    public $timestamps = false;
    protected $fillable = ['quest_id', 'user_id', 'completed_at'];
    public function quest() { return $this->belongsTo(Quest::class); }
    public function user() { return $this->belongsTo(User::class); }
}
