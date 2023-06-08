@php
    $title = __('Question List');
@endphp

<x-backend.master :title="$title">

    <x-forms.message />

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />

    <div class="row text-end my-3">
        <div>
            <a class="btn btn-sm btn-primary" href="{{ route('questions.create') }}">Create new question</a>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Question</th>
                        <th scope="col">Course</th>
                        <th scope="col">Type</th>
                        <th scope="col">Marks</th>
                        <th scope="col" width="190">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($questions as $question)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ \Illuminate\Support\Str::limit($question->name, 30, '...') }}</td>
                        <td>{{ $question->course->code . ' (' . $question->course->title . ')' }}</td>
                        <td>{{ $question->questionType->type }}</td>
                        <td>{{ $question->marks }}</td>
                        <td>
                            @if (auth()->user()->isTeacher())
                            <a class="btn btn-sm btn-info" href="{{ route('questions.show', $question->id) }}">View</a>
                            <a class="btn btn-sm btn-warning" href="{{ route('questions.edit', $question->id) }}">Edit</a>
                            <x-pages.actionDelete :link="route('questions.destroy', $question->id)" />
                            @endif
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="6">No questions</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
            <!-- End Table with hoverable rows -->

            {{ $questions->links() }}
        </div>
    </div>
</x-backend.master>
