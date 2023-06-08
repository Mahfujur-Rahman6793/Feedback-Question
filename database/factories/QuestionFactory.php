<?php

namespace Database\Factories;

use App\Models\Course;
use App\Models\QuestionType;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Question>
 */
class QuestionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $users = User::where('role_id' , User::TYPE_TEACHER)->pluck('id')->toArray();
        $courses = Course::pluck('id')->toArray();
        $qTypes = QuestionType::pluck('id')->toArray();
        return [
            'user_id' => fake()->randomElement($users),
            'course_id' => fake()->randomElement($courses),
            'question_type_id' => fake()->randomElement($qTypes),
            'name' => fake()->sentence(10),
            'marks' => fake()->numberBetween(1, 7),
        ];
    }
}
