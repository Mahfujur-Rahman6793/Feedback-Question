@php
    $title = __('Course List');
@endphp

<x-backend.master :title="$title">

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />

    <x-forms.message />
    <div class="row text-end my-3">
        <div>
            <a class="btn btn-sm btn-primary" href="{{ route('courses.create') }}">Create new course</a>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Code</th>
                        <th scope="col">Title</th>
                        <th scope="col">Credit</th>
                        <th scope="col" width="220">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($courses as $course)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $course->code }}</td>
                        <td>{{ $course->title }}</td>
                        <td>{{ $course->credit }}</td>
                        <td>
                            @if (auth()->user()->isChairman())
                            <a class="btn btn-sm btn-info" href="{{ route('courses.show', $course->id) }}">View</a>
                            <a class="btn btn-sm btn-warning" href="{{ route('courses.edit', $course->id) }}">Edit</a>
                            <x-pages.actionDelete :link="route('courses.destroy', $course->id)" />
                            @endif
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="6">No courses</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
            <!-- End Table with hoverable rows -->

            {{ $courses->links() }}
        </div>
    </div>
</x-backend.master>
