@php
    $title = __('Generated Question List');
@endphp

<x-backend.master :title="$title">

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />
    <x-forms.message />

    <div class="row text-end my-3">
        <div>
            <a class="btn btn-sm btn-primary" href="{{ route('generate-questions.create') }}">Generate new question</a>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Course</th>
                        <th scope="col">Duration</th>
                        <th scope="col">Total Marks</th>
                        <th scope="col">Total Questions</th>
                        <th scope="col" width="300">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($questions as $question)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $question->course->code . ' (' . $question->course->title . ')' }}</td>
                        <td>{{ $question->duration }}</td>
                        <td>{{ $question->total_marks }}</td>
                        <td>{{ $question->total_questions }}</td>
                        <td>
                            @if (auth()->user()->isTeacher())
                            <a class="btn btn-sm btn-info" href="{{ route('generate-questions.show', $question->id) }}">View</a>
                            @if ($question->questions == null)
                            <a class="btn btn-sm btn-warning" href="{{ route('generate-questions.edit', $question->id) }}">Continue Generating</a>
                            @endif
                            <x-pages.actionDelete :link="route('generate-questions.destroy', $question->id)" />
                            @endif
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="5">No questions</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
            <!-- End Table with hoverable rows -->

            {{ $questions->links() }}
        </div>
    </div>
</x-backend.master>
