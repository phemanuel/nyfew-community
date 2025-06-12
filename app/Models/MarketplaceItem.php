<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MarketplaceItem extends Model
{
    //
    use HasFactory;
    
    protected $fillable = ['user_id', 'title', 'description', 'price', 'type', 'image', 'status'];
    public function user() { return $this->belongsTo(User::class); }
    public function orders() { return $this->hasMany(MarketplaceOrder::class, 'item_id'); }
}
