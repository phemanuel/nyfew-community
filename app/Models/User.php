<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable;

    protected $fillable = ['last_name','first_name', 'middle_name', 'email', 'password', 'avatar', 'bio', 'location', 'rank_id', 'credit'];

    public function profile() { return $this->hasOne(Profile::class); }
    public function timelineActivities() { return $this->hasMany(TimelineActivity::class); }
    public function posts() { return $this->hasMany(Post::class); }
    public function comments() { return $this->hasMany(PostComment::class); }
    public function likes() { return $this->hasMany(PostLike::class); }
    public function groups() { return $this->belongsToMany(Group::class, 'group_members'); }
    public function ownedGroups() { return $this->hasMany(Group::class, 'owner_id'); }
    public function badges() { return $this->belongsToMany(Badge::class, 'user_badges'); }
    public function quests() { return $this->belongsToMany(Quest::class, 'user_quests'); }
    public function rank() { return $this->belongsTo(Rank::class); }
    public function threads() { return $this->hasMany(Thread::class); }
    public function replies() { return $this->hasMany(ThreadReply::class); }
    public function creditLogs() { return $this->hasMany(CreditLog::class); }
    public function marketplaceItems() { return $this->hasMany(MarketplaceItem::class); }
    public function orders() { return $this->hasMany(MarketplaceOrder::class, 'buyer_id'); }
    public function forums(){  return $this->hasMany(Forum::class);
}

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }
}
