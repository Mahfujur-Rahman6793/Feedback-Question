<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\Feedback;
use App\Models\Question;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index()
    {
        $user = auth()->user();
        $total_question = 0;
        $scenario_question = 0;
        $chapter_question = 0;
        $teacher_rating = 'N/A';

        $chairman_count = 0;

        $course_count = 0;
        $teacher_count = 0;

        $requests = [];

        $scaleLabels = [
            0 => 'N/A',
            1 => 'Very bad',
            2 => 'Bad',
            3 => 'Average',
            4 => 'Good',
            5 => 'Very good',
        ];

        if ($user->isTeacher()) {
            $questions = Question::select('question_type_id', DB::raw('COUNT(*) as total'))->groupBy('question_type_id')->get();
            foreach ($questions as $question) {
                if ($question->question_type_id == 1) { // Chapter
                    $chapter_question = $question->total;
                } else if ($question->question_type_id == 2) { // Scenario
                    $scenario_question = $question->total;
                }
            }
            $total_question = $chapter_question + $scenario_question;

            $feedback = Feedback::select('feedback.course_id', DB::raw('AVG(scales.value) as rating'))
                            ->join('users', 'feedback.user_id', '=', 'users.id')
                            ->join('scales', 'feedback.scale_id', '=', 'scales.id')
                            ->join('courses', 'feedback.course_id', '=', 'courses.id')
                            ->where('users.id', auth()->id())
                            ->groupBy('feedback.course_id')->first()?->rating ?? 0;
            $teacher_rating = $scaleLabels[intval($feedback)];
        } else if ($user->isAdmin()) {
            $chairman_count = User::where('role_id', User::TYPE_CHAIRMAN)->get()->count();
        }

        if ($user->isStudent() || $user->isChairman()) {
            $course_count = Course::where('department_id', $user->department_id)->count();
            $teacher_count = User::where('role_id', User::TYPE_TEACHER)->get()->count();
        }

        if ($user->isAdmin() || $user->isChairman()) {
            $type = User::TYPE_TEACHER;
            if ($user->isAdmin()) {
                $type = User::TYPE_CHAIRMAN;
            }

            $requests = User::whereNull('approved_at')->where('role_id', $type)->with(['department', 'role'])->latest()->take(5)->get();
        }

        return view('backend.dashboard',
                    compact(
                        'total_question', 'scenario_question', 'chapter_question', 'teacher_rating',
                        'chairman_count',
                        'course_count', 'teacher_count',
                        'requests',
                    ));
    }
}
