@php
    $title = __('Change User Role');
@endphp

<x-backend.master :title="$title">
    <x-pages.title :links="['dashboard' => __('Dashboard'), 'users.index' => __('Users List'), $title]" :title="$title" />
    <div class="card">
        <div class="card-body">
            <x-forms.form :action="route('users.update_role', $user->id)" method="PATCH" class="row px-3 py-3">
                <div class="col-md-6">
                    <x-forms.select name="role_id" label="Select new role" :options="$roles" :selected="old('role_id', $user->role_id)" required />

                    <div class="mb-3 text-end">
                        <button type="submit" value="submit" class="btn btn-primary">Update Role</button>
                    </div>
                </div>
            </x-forms.form>
        </div>
    </div>

</x-backend.master>
