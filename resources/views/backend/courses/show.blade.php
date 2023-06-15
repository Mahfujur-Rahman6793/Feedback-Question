@php
    $title = __('View Course');
@endphp

<x-backend.master :title="$title">

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />
    <x-forms.message />

    <div class="row text-end my-3">
        <div>
            <a class="btn btn-sm btn-primary" href="{{ route('courses.index') }}">List</a>
            @if (auth()->user()->isChairman())
            <a class="btn btn-sm btn-warning" href="{{ route('courses.edit', $course->id) }}">Edit</a>
            <x-pages.actionDelete :link="route('courses.destroy', $course->id)" />
            @endif
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <table class="table table-hover">
                <tbody>
                    <tr>
                        <th scope="col">Course Code</th>
                        <td>{{ $course->code }}</td>
                    </tr>
                    <tr>
                        <th scope="col">Course Title</th>
                        <td>{{ $course->title }}</td>
                    </tr>
                    <tr>
                        <th scope="col">Credit</th>
                        <td>{{ $course->credit }}</td>
                    </tr>
                    <tr>
                        <th scope="col">Department</th>
                        <td>{{ $course->department->name }}</td>
                    </tr>
                </tbody>
            </table>
            <!-- End Table with hoverable rows -->

        </div>
    </div>
</x-backend.master>
