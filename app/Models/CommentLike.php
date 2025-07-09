<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentLike extends Model
{
    //
    use HasFactory;
    
    protected $fillable = ['user_id', 'comment_id'];

    public function likes(){ return $this->hasMany(CommentLike::class);}

    public function isLikedBy(User $user){ return $this->likes()->where('user_id', $user->id)->exists();}

}
