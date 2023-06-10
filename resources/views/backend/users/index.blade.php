@php
    $title = __('User List');
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
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Role</th>
                        <th scope="col">Department</th>
                        <th scope="col" width="220px">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($users as $user)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->role->title }}</td>
                        <td>{{ $user->department->name }}</td>
                        <td>
                            @if (auth()->user()->isAdmin())
                            <a class="btn btn-sm btn-warning" href="{{ route('users.change_role', $user->id) }}">Change Role</a>
                            @endif

                            @if ((auth()->user()->isAdmin() && $user->isChairman()) || (auth()->user()->isChairman() && $user->isTeacher()))
                            @if ($user->approved_at == null)
                            <x-pages.actionPatch
                                :link="route('users.approve', $user->id)"
                                :title="__('Approve')"
                                color="success"
                                :spaced="false"/>
                            @endif
                            {{-- @if ($user->approved_at)
                            <x-pages.actionPatch
                                :link="route('users.disapprove', $user->id)"
                                :title="__('Disapprove')"
                                color="danger"
                                :spaced="false"/>
                            @endif --}}
                            @endif
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="6">No users</td>
                    </tr>
                    @endforelse
                </tbody>
            </table>
            <!-- End Table with hoverable rows -->

            {{ $users->links() }}
        </div>
    </div>
</x-backend.master>
