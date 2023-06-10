@php
    $title = __('View Assigned Course');
@endphp

<x-backend.master :title="$title">

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />
    <x-forms.message />

    <div class="row text-end my-3">
        <div>
            <a class="btn btn-sm btn-info" href="{{ route('assigned_courses.index') }}">List</a>
            <a class="btn btn-sm btn-primary" href="{{ route('assigned_courses.create', $user->id) }}">Add Course</a>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Assigned courses of {{ $user->name }}</h5>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Course code</th>
                        <th scope="col">Course title</th>
                        <th scope="col">Department</th>
                        <th scope="col" width="190">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($user->courses()->get() as $course)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $course->code }}</td>
                        <td>{{ $course->title }}</td>
                        <td>{{ $course->department->name }}</td>
                        <td>
                            <x-pages.actionDelete :link="route('assigned_courses.destroy', ['user' => $user->id, 'course' => $course->id])" />
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="5">No courses</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
            <!-- End Table with hoverable rows -->

        </div>
    </div>
</x-backend.master>
