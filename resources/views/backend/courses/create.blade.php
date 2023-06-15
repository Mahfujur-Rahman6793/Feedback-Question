@php
    $title = __('Create New Course');
@endphp

<x-backend.master :title="$title">
    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />

    <x-forms.message />

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <x-forms.form :action="route('courses.store')" method="POST" class="row px-3 py-3" >
                <x-forms.input name="code" type="text" :label="__('Enter course code')" :value="old('code')" required />
                <x-forms.input name="title" type="text" :label="__('Enter course title')" :value="old('title')" required />

                <x-forms.input name="credit" type="number" max="5" min="1" step="0.5" :label="__('Enter course credit')"
                    :value="old('credit')" required />

                <div class="mb-3 text-end">
                    <button type="submit" value="submit" id="btnSubmit" class="btn btn-primary">{{ __('Add question') }}</button>
                </div>
            </x-forms.form>
        </div>
    </div>
</x-backend.master>
