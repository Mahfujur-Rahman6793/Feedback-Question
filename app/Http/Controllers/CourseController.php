<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $courses = Course::where('department_id', auth()->user()->department_id)
                            ->latest()->with(['department'])->paginate(20);
        return view('backend.courses.index', compact('courses'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.courses.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            DB::beginTransaction();
            Course::create([
                'department_id' => auth()->user()->department_id,
                'code' => $request->code,
                'title' => $request->title,
                'credit' => $request->credit,
            ]);
            DB::commit();
        } catch (\Exception $ex) {
            DB::rollback();
            return redirect()->back()->withMessage('Can not create course. ' . $ex->getMessage());
        }
        return redirect()->route('courses.index')->withMessage('Course created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function show(Course $course)
    {
        return view('backend.courses.show', compact('course'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function edit(Course $course)
    {
        return view('backend.courses.edit', compact('course'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Course $course)
    {
        try {
            DB::beginTransaction();
            $course->update([
                'code' => $request->code,
                'title' => $request->title,
                'credit' => $request->credit,
            ]);
            DB::commit();
        } catch (\Exception $ex) {
            DB::rollback();
            return redirect()->back()->withMessage('Can not update course. ' . $ex->getMessage());
        }
        return redirect()->route('courses.index')->withMessage('Course updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Course  $course
     * @return \Illuminate\Http\Response
     */
    public function destroy(Course $course)
    {
        try {
            DB::beginTransaction();
            $course->delete();
            DB::commit();
        } catch (\Exception $ex) {
            DB::rollback();
            return redirect()->back()->withMessage('Can not delete course. Course is already in use.');
        }
        return redirect()->route('courses.index')->withMessage('Course deleted successfully');
    }
}
