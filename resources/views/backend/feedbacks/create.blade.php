@php
    $title = __('Add Feedback');
@endphp

<x-backend.master :title="$title">
    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />

    <x-forms.message />

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <x-forms.form :action="route('feedbacks.store')" method="POST" class="row px-3 py-3">
                <x-forms.select name="course" label="Select course" :options="$courses" :selected="old('course')" required />
                <x-forms.select name="teacher" label="Select teacher" :options="$teachers" :selected="old('teacher')" required />
                <x-forms.select name="scale" label="Select scale" :options="$scales" :selected="old('scale')" required />

                <x-forms.textarea name="comment" :label="__('Enter comment')" :value="old('comment')" rows="4" required/>

                <div class="mb-3 text-end">
                    <button type="submit" value="submit" class="btn btn-primary">{{ __('Add feedback') }}</button>
                </div>
            </x-forms.form>
        </div>
    </div>

</x-backend.master>
