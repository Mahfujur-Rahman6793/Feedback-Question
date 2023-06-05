<?php

namespace Database\Seeders;

use App\Models\Scale;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ScaleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $labels = [
            1 => 'Very bad',
            2 => 'Bad',
            3 => 'Average',
            4 => 'Good',
            5 => 'Very good',
        ];

        foreach ($labels as $value => $label) {
            Scale::create([
                'title' => $label,
                'value' => $value,
            ]);
        }
    }
}
