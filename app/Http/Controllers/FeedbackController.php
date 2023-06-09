<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreFeedbackRequest;
use App\Http\Requests\UpdateFeedbackRequest;
use App\Models\Course;
use App\Models\Feedback;
use App\Models\FeedbackLog;
use App\Models\Scale;
use App\Models\User;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

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
        $teachers = User::where('role_id', User::TYPE_TEACHER)->where('department_id', auth()->user()->department_id)->pluck('name', 'id')->toArray();
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
        return view('backend.feedbacks.show', compact('feedbacks', 'teacher_name', 'total_rating'));
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
}
