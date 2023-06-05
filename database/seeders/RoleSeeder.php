<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Seeder;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = [
            'admin' => 'Admin',
            'chairman' => 'Chairman', // Director or Chairman
            'teacher' => 'Teacher',
            'student' => 'Student',
        ];

        foreach ($roles as $code => $title) {
            Role::create([
                'title' => $title,
                'code' => $code,
            ]);
        }
    }
}
