@php
    $title = __('View Feedback');
@endphp

<x-backend.master :title="$title">

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />
    <x-forms.message />

    <div class="row text-end my-3">
        <div>
            <a class="btn btn-sm btn-info" href="{{ route('feedbacks.index') }}">List</a>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            @php
                $scaleLabels = [
                    1 => 'Very bad',
                    2 => 'Bad',
                    3 => 'Average',
                    4 => 'Good',
                    5 => 'Very good',
                ];
            @endphp
            <div class="row">
                <h5>Teacher name: {{ $teacher_name }}</h5>
                <h5>Total rating: {{ $scaleLabels[intval($total_rating)] }}</h5>
            </div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Course</th>
                        <th scope="col">Average Rating</th>
                        @if (auth()->user()->isChairman()) <th scope="col">Comment</th> @endif
                    </tr>
                </thead>
                <tbody>
                    @forelse ($feedbacks as $feedback)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $feedback->course->code . " ({$feedback->course->title})" }}</td>
                        <td>{{ $scaleLabels[intval($feedback->rating)] }}</td>
                        @if (auth()->user()->isChairman() && $feedback->user_id != auth()->id())
                        <td>
                            <ol>
                                @foreach ($comments[$feedback->course_id] as $c)
                                <li>{{ $c }}</li>
                                @endforeach
                            </ol>
                        </td>
                        @endif
                    </tr>
                    @empty
                    <tr>
                        <td colspan="4">No feedbacks</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
            <!-- End Table with hoverable rows -->

        </div>
    </div>
</x-backend.master>
