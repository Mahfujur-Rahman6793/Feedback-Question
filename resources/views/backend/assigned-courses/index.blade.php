@php
    $title = __('Assigned Course List');
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
                        <th scope="col">Teacher</th>
                        <th scope="col">Courses</th>
                        <th scope="col" width="190">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($assigned_courses as $teacher)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $teacher->name }}</td>
                        <td>{{ implode(', ' ,$teacher->courses()->pluck('code')->toArray()) }}</td>
                        <td>
                            <a class="btn btn-sm btn-info" href="{{ route('assigned_courses.show', $teacher->id) }}">View</a>
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="4">No assigned courses</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
            <!-- End Table with hoverable rows -->

            {{ $assigned_courses->links() }}
        </div>
    </div>
</x-backend.master>
