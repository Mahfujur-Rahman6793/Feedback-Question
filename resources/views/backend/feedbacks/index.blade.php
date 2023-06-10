@php
    $title = __('Feedback List');
@endphp

<x-backend.master :title="$title">

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />
    <x-forms.message />

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        @if (auth()->user()->isTeacher())
                        <th scope="col">Course</th>
                        @else
                        <th scope="col">Teacher</th>
                        @endif
                        <th scope="col">Average Rating</th>
                        <th scope="col" width="190">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $scaleLabels = [
                            1 => 'Very bad',
                            2 => 'Bad',
                            3 => 'Average',
                            4 => 'Good',
                            5 => 'Very good',
                        ];
                    @endphp
                    @forelse ($feedbacks as $feedback)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        @if (auth()->user()->isTeacher())
                        <td>{{ $feedback->course->code . " ({$feedback->course->title})" }}</td>
                        @else
                        <td>{{ $feedback->teacher->name }}</td>
                        @endif
                        <td>{{ $scaleLabels[intval($feedback->rating)] }}</td>
                        <td>
                            @if (auth()->user()->isChairman())
                            <a class="btn btn-sm btn-info" href="{{ route('feedbacks.show', $feedback->teacher->id) }}">View</a>
                            @endif
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="4">No feedbacks</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
            <!-- End Table with hoverable rows -->

            {{ $feedbacks->links() }}
        </div>
    </div>
</x-backend.master>
