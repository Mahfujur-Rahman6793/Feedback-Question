@php
    $title = __('View Generated Question');
@endphp

<x-backend.master :title="$title">

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />
    <x-forms.message />

    <div class="row text-end my-3">
        <div>
            <a class="btn btn-sm btn-primary" href="{{ route('questions.index') }}">List</a>
            @if (auth()->user()->isTeacher() || auth()->user()->isChairman())
            <a class="btn btn-sm btn-info" href="{{ route('generate-questions.pdf', $question->id) }}">Get PDF</a>
            <x-pages.actionDelete :link="route('questions.destroy', $question->id)" />
            @endif
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <div class="row">
                <h4 class="text-center">
                    @php
                        $deptName = $question->course->department->name;
                        if ($deptName == 'Software Engineering') {
                            $deptName = 'Institute of Information Technology (IIT)';
                        } else if ($deptName == 'Department of Information Sciences and Library Management') {
                            $deptName = 'Institute of Information Sciences (IIS)';
                        }
                    @endphp
                    {{ $deptName }}
                </h4>
                <h5 class="text-center">Noakhali Science and Technology University</h5>
                @if ($deptName == 'Institute of Information Technology (IIT)')
                <h5 class="text-center">
                    Bachelor of Science in Software Engineering
                </h5>
                @endif
                <h5 class="text-center">{{ $question->exam_name }}</h5>
                <div class="col-md-6 mt-3">
                    <h5>Course Code: {{ $question->course->code }}</h5>
                    <h5>Course Title: {{ $question->course->title }}</h5>
                </div>
                <div class="col-md-6 text-end mt-3">
                    <h5>Total Marks: {{ $question->total_marks }}</h5>
                    <h5>Duration: {{ $question->duration }} Minutes</h5>
                </div>
                <h5 class="text-center">{{ $question->description }}</h5>
            </div>
            <table class="table table-bordered mt-4">
                {{-- <thead>
                    <tr>
                        <th>#</th>
                        <th>Question</th>
                        <th width="100px">Marks</th>
                    </tr>
                </thead> --}}
                <tbody>
                    @foreach ($question->questions as $q)
                    <tr>
                        <td width="50px">{{ $loop->iteration }}</td>
                        {{-- <td>{{ $q['type'] }}</td> --}}
                        @if ($q['has_sub_questions'])
                        <td colspan="2">
                            <table class="table table-responsive table-borderless">
                                <tbody>
                                    @foreach ($q['sub_questions'] as $sub)
                                    <tr>
                                        <td width="20px">{{ chr($loop->iteration + 96) }}</td>
                                        <td>{!! $sub['question'] !!}</td>
                                        <td width="50px">{{ $sub['marks'] }}</td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </td>
                        @else
                        <td>
                            {!! $q['question'] !!}
                        </td>
                        <td width="60px" class="pe-2">
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
