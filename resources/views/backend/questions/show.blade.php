@php
    $title = __('View Question');
@endphp

<x-backend.master :title="$title">

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />
    <x-forms.message />

    <div class="row text-end my-3">
        <div>
            <a class="btn btn-sm btn-primary" href="{{ route('questions.index') }}">List</a>
            @if (auth()->user()->isTeacher() || auth()->user()->isChairman())
            <a class="btn btn-sm btn-warning" href="{{ route('questions.edit', $question->id) }}">Edit</a>
            <x-pages.actionDelete :link="route('questions.destroy', $question->id)" />
            @endif
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <table class="table table-hover">
                <tbody>
                    <tr>
                        <th scope="col">Question</th>
                        <td>{!! $question->name !!}</td>
                    </tr>
                    <tr>
                        <th scope="col">Course code</th>
                        <td>{{ $question->course->code }}</td>
                    </tr>
                    <tr>
                        <th scope="col">Course</th>
                        <td>{{ $question->course->title }}</td>
                    </tr>
                    <tr>
                        <th scope="col">Question Type</th>
                        <td>{{ $question->questionType->type }}</td>
                    </tr>
                    <tr>
                        <th scope="col">Marks</th>
                        <td>{{ $question->marks }}</td>
                    </tr>
                </tbody>
            </table>
            <!-- End Table with hoverable rows -->

        </div>
    </div>
</x-backend.master>
