<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Forum extends Model
{
    //
    use HasFactory;
    
    protected $fillable = ['title', 'description', 'parent_id','user_id'];
    public function threads() { return $this->hasMany(Thread::class); }
    public function parent() { return $this->belongsTo(Forum::class, 'parent_id'); }
    public function children() { return $this->hasMany(Forum::class, 'parent_id'); }
    // Forum creator (user)
    public function creator() { return $this->belongsTo(User::class, 'user_id');
    }
}
