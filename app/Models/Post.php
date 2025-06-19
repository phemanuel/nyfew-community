<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    //
    use HasFactory;
    
    protected $fillable = ['user_id', 'content', 'image', 'video', 'type', 'visibility'];
    protected $casts = [
        'image' => 'array',
        'video' => 'array',
    ];
    public function user() { return $this->belongsTo(User::class); }
    public function comments() { return $this->hasMany(PostComment::class); }
    public function likes() { return $this->hasMany(PostLike::class); }
    public function groupPost() { return $this->hasOne(GroupPost::class); }

    
}
