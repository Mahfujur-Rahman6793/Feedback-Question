<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    protected $guarded = [];

    public function teacher()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function scale()
    {
        return $this->belongsTo(Scale::class);
    }
}
