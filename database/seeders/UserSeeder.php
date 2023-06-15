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
            'admin@gmail.com' => ['Admin', 1, 1],
            'chairman@gmail.com' => ['Chairman', 2, 1],
            'dipok.iit@nstu.edu.bd' => ['Dipok Chandra Das', 3, 33],
            'teacher@gmail.com' => ['Teacher', 3, 1],
            'teacher2@gmail.com' => ['Teacher 2', 3, 2],
            'teacher3@gmail.com' => ['Teacher 3', 3, 3],
            'teacher4@gmail.com' => ['Teacher 4', 3, 4],
            'student@gmail.com' => ['Student', 4, 1],
            'student2@gmail.com' => ['Student 2', 4, 2],
            'student3@gmail.com' => ['Student 3', 4, 3],
            'student4@gmail.com' => ['Student 4', 4, 4],
            'mahfujur2513@student.nstu.edu.bd' => ['Mahfujur Rahman', 4, 33],
            'pharmasalim@nstu.edu.bd' => ['Dr. Mohammad Salim Hossain', 2, 33],
        ];

        foreach ($users as $email => $data) {
            User::create([
                'name' => $data[0],
                'email' => $email,
                'email_verified_at' => now(),
                'password' => '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', // 12345678
                'role_id' => $data[1],
                'department_id' => $data[2],
                'approved_at' => now(),
            ]);
        }
    }
}
