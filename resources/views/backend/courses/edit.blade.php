@php
    $title = __('Edit Course');
@endphp

<x-backend.master :title="$title">

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />
    <x-forms.message />

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <x-forms.form :action="route('courses.update', $course->id)" method="PATCH" class="row px-3 py-3">
                <x-forms.input name="code" type="text" :label="__('Enter course code')" :value="old('code', $course->code)" required />
                <x-forms.input name="title" type="text" :label="__('Enter course title')" :value="old('title', $course->title)" required />

                <x-forms.input name="credit" type="number" max="5" min="1" step="0.5" :label="__('Enter course credit')"
                    :value="old('credit', $course->credit)" required />
                <div class="mb-3 text-end">
                    <button type="submit" value="submit" class="btn btn-primary">{{ __('Edit course') }}</button>
                </div>
            </x-forms.form>
        </div>
    </div>

</x-backend.master>
