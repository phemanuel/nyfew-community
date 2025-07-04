<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Thread extends Model
{
    //
    use HasFactory;
    
    protected $fillable = ['forum_id', 'user_id', 'title', 'content'];
    public function forum() { return $this->belongsTo(Forum::class); }
    public function user() { return $this->belongsTo(User::class); }
    public function replies() { return $this->hasMany(ThreadReply::class); }
}
