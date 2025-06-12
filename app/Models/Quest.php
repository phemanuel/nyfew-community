<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Quest extends Model
{
    //
    use HasFactory;
    
    protected $fillable = ['name', 'description', 'reward_credit'];
    public function users() { return $this->belongsToMany(User::class, 'user_quests'); }
}
