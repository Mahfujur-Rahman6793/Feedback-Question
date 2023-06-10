<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreGenerateQuestionRequest;
use App\Http\Requests\UpdateGenerateQuestionRequest;
use App\Models\Course;
use App\Models\GenerateQuestion;
use App\Models\Question;
use App\Models\QuestionType;
use Illuminate\Http\Request;

class GenerateQuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $questions = GenerateQuestion::latest()->with('course')->paginate(20);
        return view('backend.generate-questions.index', compact('questions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $courses = auth()->user()->courses()->latest('course_user.created_at')->pluck('code', 'id')->toArray();
        return view('backend.generate-questions.create', compact('courses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreGenerateQuestionRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreGenerateQuestionRequest $request)
    {
        $question = GenerateQuestion::create([
            'user_id' => auth()->id(),
            'course_id' => $request->course,
            'total_marks' => $request->total_marks,
            'total_questions' => $request->total_questions,
            'duration' => $request->duration,
            'description' => $request->description,
        ]);
        return redirect()->route('generate-questions.edit', $question->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\GenerateQuestion  $generateQuestion
     * @return \Illuminate\Http\Response
     */
    public function show(GenerateQuestion $generateQuestion)
    {
        $question = $generateQuestion;
        return view('backend.generate-questions.show', compact('question'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\GenerateQuestion  $generateQuestion
     * @return \Illuminate\Http\Response
     */
    public function edit(GenerateQuestion $generateQuestion)
    {
        $questionTypes = QuestionType::pluck('type', 'id')->toArray();
        $question = $generateQuestion;
        return view('backend.generate-questions.edit', compact('question', 'questionTypes'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateGenerateQuestionRequest  $request
     * @param  \App\Models\GenerateQuestion  $generateQuestion
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateGenerateQuestionRequest $request, GenerateQuestion $generateQuestion)
    {
        // dd($request->all());
        $types = QuestionType::pluck('type', 'id')->toArray();
        $questions = Question::pluck('name', 'id')->toArray();
        $gen_questions = [];
        for ($i=0; $i < count($request->question); $i++) {
            $temp = [
                'type_id' => $request->type[$i],
                'type' => $types[$request->type[$i]],
            ];

            if ($request->type[$i] == 1) { // Chapter
                $temp['has_sub_questions'] = true;
                $subQ = [];
                for ($j=0; $j < count($request->question[$i]); $j++) {
                    $tempQ = [
                        'question_id' => $request->question[$i][$j],
                        'question' => $questions[$request->question[$i][$j]],
                        'marks' => $request->marks[$i][$j],
                    ];
                    $subQ[] = $tempQ;
                }
                $temp['sub_questions'] = $subQ;
            } else if ($request->type[$i] == 2) { // Scenario
                $temp['question_id'] = $request->question[$i];
                $temp['question'] = $questions[$request->question[$i]];
                $temp['marks'] = $request->marks[$i];
                $temp['has_sub_questions'] = false;
            }

            $gen_questions[] = $temp;
        }
        $generateQuestion->update([
            'questions' => $gen_questions,
        ]);
        return redirect()->route('generate-questions.show', $generateQuestion->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\GenerateQuestion  $generateQuestion
     * @return \Illuminate\Http\Response
     */
    public function destroy(GenerateQuestion $generateQuestion)
    {
        //
    }

    public function pdf()
    {
        return "GET PDF";
    }

    public function random(Request $request)
    {
        $selected = $request->selected;

        $questions = Question::where('user_id', auth()->id())
                        ->where('course_id', $request->course_id)
                        ->where('question_type_id', $request->question_type_id)
                        ->where('marks', $request->marks);
        if ($selected) {
            $questions = $questions->whereNotIn('id', $selected);
        }

        $questions = $questions->get();

        // return response()->json([
        //     'data' => null,
        //     'selected' => $selected,
        //     'd' => $questions,
        //     'u' => auth()->id(),
        //     'c' => $request->course_id,
        //     'qt' => $request->question_type_id,
        //     'marks' => $request->marks,
        // ]);

        if ($questions->isEmpty()) {
            return response()->json([
                'data' => null,
            ]);
        }

        $question = $questions[rand(0, $questions->count() - 1)];
        return response()->json([
            'data' => $question->name,
            'id' => $question->id
        ]);
    }
}
