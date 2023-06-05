<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
            'admin@gmail.com' => ['Admin', 1],
            'chairman@gmail.com' => ['Chairman', 2],
            'teacher@gmail.com' => ['Teacher', 3],
            'student@gmail.com' => ['Student', 4],
        ];

        foreach ($users as $email => $data) {
            User::create([
                'name' => $data[0],
                'email' => $email,
                'email_verified_at' => now(),
                'password' => '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', // 12345678
                'role_id' => $data[1],
                'department_id' => 1,
            ]);
        }
    }
}
