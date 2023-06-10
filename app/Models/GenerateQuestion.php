<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GenerateQuestion extends Model
{
    protected $guarded = [];

    protected $casts = [
        'questions' => 'json',
    ];

    public function teacher()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function course()
    {
        return $this->belongsTo(Course::class);
    }
}
