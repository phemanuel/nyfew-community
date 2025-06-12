<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    //
    use HasFactory;

    protected $fillable = ['name', 'description', 'type', 'avatar', 'owner_id'];
    public function owner() { return $this->belongsTo(User::class, 'owner_id'); }
    public function members() { return $this->belongsToMany(User::class, 'group_members'); }
    public function posts() { return $this->hasMany(GroupPost::class); }
}
