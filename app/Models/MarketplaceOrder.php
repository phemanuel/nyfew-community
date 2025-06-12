<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MarketplaceOrder extends Model
{
    //
    use HasFactory;
    
    protected $fillable = ['buyer_id', 'item_id', 'status'];
    public function item() { return $this->belongsTo(MarketplaceItem::class, 'item_id'); }
    public function buyer() { return $this->belongsTo(User::class, 'buyer_id'); }
}
