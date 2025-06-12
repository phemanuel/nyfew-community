<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rank extends Model
{
    //
    use HasFactory;
    
    protected $fillable = ['name', 'level', 'min_credit'];
    public function users() { return $this->hasMany(User::class); }
}
