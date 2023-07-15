<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;

    public $timestamps = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'country_id', 'name', 'dob', 'phone', 'email'
    ];

    /**
     * Get country related to customer
     */
    public function country()
    {
        return $this->belongsTo(Country::class);
    }

    /**
     * Get family related to customer
     */
    public function family()
    {
        return $this->hasMany(Family::class);
    }
}
