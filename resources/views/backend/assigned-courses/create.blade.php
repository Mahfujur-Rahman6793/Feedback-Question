@php
    $title = __('Assign Course');
@endphp

<x-backend.master :title="$title">
    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />

    <x-forms.message />

    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Assign course for {{ $user->name }}</h5>
            <x-forms.form :action="route('assigned_courses.store', $user->id)" method="POST" class="row px-3 py-3">
                <x-forms.select name="course" label="Select course" :options="$courses" :selected="old('course')" required />

                <div class="mb-3 text-end">
                    <button type="submit" value="submit" class="btn btn-primary">{{ __('Assign course') }}</button>
                </div>
            </x-forms.form>
        </div>
    </div>

</x-backend.master>
