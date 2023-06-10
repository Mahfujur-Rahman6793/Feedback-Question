@php
    $title = __('View Generated Question');
@endphp

<x-backend.master :title="$title">

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />
    <x-forms.message />

    {{-- <div class="row text-end my-3">
        <div>
            <a class="btn btn-sm btn-primary" href="{{ route('questions.index') }}">List</a>
            <a class="btn btn-sm btn-warning" href="{{ route('questions.edit', $question->id) }}">Edit</a>
            <x-pages.actionDelete :link="route('questions.destroy', $question->id)" />
        </div>
    </div> --}}

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <h5>Course: {{ $question->course->code . " ({$question->course->title})" }}</h5>
            <h5>Total Marks: {{ $question->total_marks }}</h5>
            <h5>Total Questions: {{ $question->total_questions }}</h5>
            <h5>Duration: {{ $question->duration }} Minutes</h5>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Question</th>
                        <th width="100px">Marks</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($question->questions as $q)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        {{-- <td>{{ $q['type'] }}</td> --}}
                        @if ($q['has_sub_questions'])
                        <td colspan="2">
                            <table class="table table-responsive">
                                <tbody>
                                    @foreach ($q['sub_questions'] as $sub)
                                    <tr>
                                        <td>{{ chr($loop->iteration + 96) }}</td>
                                        <td>{!! $sub['question'] !!}</td>
                                        <td width="100px">{{ $sub['marks'] }}</td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </td>
                        @else
                        <td>
                            {{ $q['question'] }}
                        </td>
                        <td>
                            {{ $q['marks'] }}
                        </td>
                        @endif
                    </tr>
                    @endforeach
                </tbody>
            </table>
            <!-- End Table with hoverable rows -->

        </div>
    </div>
</x-backend.master>
