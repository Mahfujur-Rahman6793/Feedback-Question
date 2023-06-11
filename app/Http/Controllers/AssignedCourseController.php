<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\User;
use Illuminate\Http\Request;

class AssignedCourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $assigned_courses = User::where('role_id', User::TYPE_TEACHER)
                                ->where('department_id', auth()->user()->department_id)
                                ->with('courses')->latest()->paginate(20);
        return view('backend.assigned-courses.index', compact('assigned_courses'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(User $user)
    {
        $courses = Course::all();
        $temp = [];
        foreach ($courses as $course) {
            $temp[$course->id] = $course->code . " ({$course->title})";
        }
        $courses = $temp;
        return view('backend.assigned-courses.create', compact('user', 'courses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, User $user)
    {
        $request->validate([
            'course' => ['required', 'exists:courses,id'],
        ]);
        $user->courses()->attach($request->course);
        return redirect()->route('assigned_courses.show', $user->id)->withMessage('Course assigned successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return view('backend.assigned-courses.show', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user, $course)
    {
        $user->courses()->detach($course);
        return redirect()->route('assigned_courses.show', $user->id)->withMessage('Course removed for teacher successfully');
    }
}
