<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable implements MustVerifyEmail
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'role_id',
        'department_id',
        'approved_at',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    const TYPE_ADMIN = 1; //'admin';
    const TYPE_CHAIRMAN = 2; //'chairman';
    const TYPE_TEACHER = 3; //'teacher';
    const TYPE_STUDENT = 4; //'student';

    public function isAdmin()
    {
        return $this->role_id == User::TYPE_ADMIN;
    }

    public function isChairman()
    {
        return $this->role_id == User::TYPE_CHAIRMAN;
    }

    public function isTeacher()
    {
        return $this->role_id == User::TYPE_TEACHER;
    }

    public function isStudent()
    {
        return $this->role_id == User::TYPE_STUDENT;
    }

    public function role()
    {
        return $this->belongsTo(Role::class);
    }

    public function department()
    {
        return $this->belongsTo(Department::class);
    }
}
