<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreFeedbackRequest;
use App\Http\Requests\UpdateFeedbackRequest;
use App\Models\Course;
use App\Models\Feedback;
use App\Models\FeedbackLog;
use App\Models\Scale;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Barryvdh\DomPDF\Facade\Pdf;

class FeedbackController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $feedbacks = null;
        if (auth()->user()->isTeacher()) {
            $feedbacks = Feedback::select('feedback.course_id', 'courses.code', 'courses.title', DB::raw('AVG(scales.value) as rating'))
                            ->join('users', 'feedback.user_id', '=', 'users.id')
                            ->join('scales', 'feedback.scale_id', '=', 'scales.id')
                            ->join('courses', 'feedback.course_id', '=', 'courses.id')
                            ->where('users.id', auth()->id())
                            ->groupBy('feedback.course_id', 'courses.code', 'courses.title')
                            ->latest('feedback.created_at')->paginate(20);
        } else if (auth()->user()->isChairman()) {
            $feedbacks = Feedback::select('feedback.user_id', DB::raw('AVG(scales.value) as rating'))
                        ->join('users', 'feedback.user_id', '=', 'users.id')
                        ->join('scales', 'feedback.scale_id', '=', 'scales.id')
                        ->join('courses', 'feedback.course_id', '=', 'courses.id')
                        ->where('users.department_id', auth()->user()->department_id)
                        ->where('users.role_id', User::TYPE_TEACHER)
                        ->groupBy('feedback.user_id')
                        ->latest('feedback.created_at')->paginate(20);
        }
        return view('backend.feedbacks.index', compact('feedbacks'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $scales = Scale::pluck('title', 'id')->toArray();
        $teachers = User::where('role_id', User::TYPE_TEACHER)->where('department_id', auth()->user()->department_id)->whereNotNull('approved_at')->pluck('name', 'id')->toArray();
        $courses = Course::where('department_id', auth()->user()->department_id)->orderBy('title')->pluck('title', 'id')->toArray();
        return view('backend.feedbacks.create', compact('scales', 'teachers', 'courses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreFeedbackRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreFeedbackRequest $request)
    {
        $today = Carbon::now();
        $logs = FeedbackLog::where('user_id', auth()->id())
                        ->where('teacher_id', $request->teacher)
                        ->where('course_id', $request->course)
                        ->whereMonth('created_at', $today->month)
                        ->whereYear('created_at', $today->year)->get();
        if ($logs->count()) {
            return redirect()->back()->withMessage('You already provided feedback for this course and teacher at the current month.');
        }
        Feedback::create([
            'user_id' => $request->teacher,
            'course_id' => $request->course,
            'scale_id' => $request->scale,
            'comment' => $request->comment,
        ]);

        FeedbackLog::create([
            'user_id' => auth()->id(),
            'teacher_id' => $request->teacher,
            'course_id' => $request->course,
        ]);

        return redirect()->back()->withMessage('Feedback added successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Feedback  $feedback
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        $total_rating = Feedback::select('feedback.user_id', DB::raw('AVG(scales.value) as rating'))
                        ->join('users', 'feedback.user_id', '=', 'users.id')
                        ->join('scales', 'feedback.scale_id', '=', 'scales.id')
                        ->where('users.id', $user->id)
                        ->groupBy('feedback.user_id')->first()?->rating ?? 'N/A';

        $teacher_name = $user->name;
        $feedbacks = Feedback::select('feedback.course_id', 'courses.code', 'courses.title', DB::raw('AVG(scales.value) as rating'))
                        ->join('users', 'feedback.user_id', '=', 'users.id')
                        ->join('scales', 'feedback.scale_id', '=', 'scales.id')
                        ->join('courses', 'feedback.course_id', '=', 'courses.id')
                        ->where('users.id', $user->id)
                        ->groupBy('feedback.course_id', 'courses.code', 'courses.title')
                        ->latest('feedback.created_at')->get();
        $course_comments = Feedback::where('user_id', $user->id)->latest('feedback.created_at')->get();
        $comments = [];
        foreach ($course_comments as $c) {
            if (!array_key_exists($c->course_id, $comments)) {
                $comments[$c->course_id] = [];
            }
            $comments[$c->course_id][] = $c->comment;
        }
        return view('backend.feedbacks.show', compact('feedbacks', 'teacher_name', 'total_rating', 'comments'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Feedback  $feedback
     * @return \Illuminate\Http\Response
     */
    public function edit(Feedback $feedback)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateFeedbackRequest  $request
     * @param  \App\Models\Feedback  $feedback
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateFeedbackRequest $request, Feedback $feedback)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Feedback  $feedback
     * @return \Illuminate\Http\Response
     */
    public function destroy(Feedback $feedback)
    {
        //
    }

    public function pdf()
    {
        return view('backend.feedbacks.generatepdf');
    }

    public function generatePdf(Request $request)
    {
        $request->validate([
            'start_date' => ['date', 'required', 'before_or_equal:end_date', 'before_or_equal:today'],
            'end_date' => ['date', 'required', 'after_or_equal:start_date', 'before_or_equal:today'],
        ]);

        $user = auth()->user();
        $start_date_txt = $request->start_date;
        $end_date_txt = $request->end_date;
        $deptName = $user->department->name;

        $scaleLabels = [
            1 => 'Very bad',
            2 => 'Bad',
            3 => 'Average',
            4 => 'Good',
            5 => 'Very good',
        ];
        $courses = Course::where('department_id', $user->department_id)->pluck('id')->toArray();
        $all_feedbacks = Feedback::whereBetween('created_at', [$request->start_date, $request->end_date])
                            ->whereIn('course_id', $courses)
                            ->with(['course', 'teacher', 'scale'])
                            ->get();
        $feedbacks = [];
        /*
        [
            'teacher' => [
                'courses' => [
                    'course_code_course_title' => [
                        'comments' => [
                            'comment',
                            ...
                        ]
                        'avg_scale' => '',
                        'avg_rating' => '',
                        'total_rating' => '',
                    ],
                    ...
                ],
                'avg_scale' => '',
                'avg_rating' => '',
                'total_rating' => '',
            ],
            ...
        ]
        */
        foreach ($all_feedbacks as $feedback) {
            $teacher_name = $feedback->teacher->name;
            if (!isset($feedbacks[$teacher_name])) {
                $feedbacks[$teacher_name] = [
                    'courses' => [],
                    'avg_scale' => 0,
                    'avg_rating' => 0,
                    'total_rating' => 0,
                ];
            }

            $course_code_title = $feedback->course->code . " ({$feedback->course->title})";
            if (!isset($feedbacks[$teacher_name]['courses'][$course_code_title])) {
                $feedbacks[$teacher_name]['courses'][$course_code_title] = [
                    'comments' => [],
                    'avg_scale' => 0,
                    'avg_rating' => 0,
                    'total_rating' => 0,
                ];
            }

            $rating = $feedback->scale->value;
            $feedbacks[$teacher_name]['courses'][$course_code_title]['comments'][] = $feedback->comment;
            $feedbacks[$teacher_name]['courses'][$course_code_title]['total_rating'] += $rating;
            $feedbacks[$teacher_name]['total_rating'] += $rating;
        }

        foreach ($feedbacks as &$feedback) {
            $course_count = 0;
            $course_total = 0;
            foreach ($feedback['courses'] as &$course) {
                $comment_count = count($course['comments']);
                $rating = intval($course['total_rating'] / $comment_count);
                $course['avg_rating'] = $rating;
                $course['avg_scale'] = $scaleLabels[$rating];

                $course_total += $rating;
                $course_count += 1;
            }

            $rating = intval($course_total / $course_count);
            $feedback['total_rating'] = $course_total;
            $feedback['avg_rating'] = $rating;
            $feedback['avg_scale'] = $scaleLabels[$rating];
        }

        // return view('backend.feedbacks.pdf', compact('feedbacks', 'deptName', 'start_date_txt', 'end_date_txt'));

        $pdf = Pdf::loadView('backend.feedbacks.pdf', compact('feedbacks', 'deptName', 'start_date_txt', 'end_date_txt'));
        return $pdf->download("Feedback_report_{$start_date_txt}_{$end_date_txt}.pdf");
        // return redirect()->route('feedbacks.index')->withMessage('Feedback report created successfully');
    }
}
