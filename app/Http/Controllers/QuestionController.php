<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreQuestionRequest;
use App\Http\Requests\UpdateQuestionRequest;
use App\Models\Course;
use App\Models\Question;
use App\Models\QuestionType;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $questions = Question::where('user_id', auth()->id())->latest()->with(['teacher', 'course', 'questionType'])->paginate(20);
        return view('backend.questions.index', compact('questions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $courses = auth()->user()->courses()->latest('course_user.created_at')->pluck('code', 'id')->toArray();
        $questionTypes = QuestionType::pluck('type', 'id')->toArray();
        return view('backend.questions.create', compact('courses', 'questionTypes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreQuestionRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreQuestionRequest $request)
    {
        Question::create([
            'user_id' => auth()->id(),
            'course_id' => $request->course,
            'question_type_id' => $request->type,
            'marks' => $request->marks,
            'name' => $request->name,
        ]);
        return redirect()->route('questions.index')->withMessage('Question Added successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function show(Question $question)
    {
        // $question = $question->with(['teacher', 'course', 'questionType'])->first();
        return view('backend.questions.show', compact('question'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function edit(Question $question)
    {
        // $question = $question->with(['teacher', 'course', 'questionType'])->first();
        $courses = Course::latest()->pluck('code', 'id')->toArray();
        $questionTypes = QuestionType::pluck('type', 'id')->toArray();
        return view('backend.questions.edit', compact('question', 'courses', 'questionTypes'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateQuestionRequest  $request
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateQuestionRequest $request, Question $question)
    {
        $question->update([
            'course_id' => $request->course,
            'question_type_id' => $request->type,
            'marks' => $request->marks,
            'name' => $request->name,
        ]);
        return redirect()->route('questions.index')->withMessage('Question updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        $question->delete();
        return redirect()->route('questions.index')->withMessage('Question deleted successfully');
    }
}
