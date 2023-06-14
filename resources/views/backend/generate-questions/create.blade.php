@php
    $title = __('Generate Question');
@endphp

<x-backend.master :title="$title">
    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />

    <x-forms.message />

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <x-forms.form :action="route('generate-questions.store')" method="POST" class="row px-3 py-3">
                <x-forms.select name="course" label="Select course" :options="$courses" :selected="old('course')" required />

                <x-forms.input name="total_marks" type="number" max="100" min="1" step="1" :label="__('Enter total marks')"
                    :value="old('total_marks')" required />

                <x-forms.input name="total_questions" type="number" max="10" min="1" step="1" :label="__('Enter number of questions')"
                    :value="old('total_questions')" required />

                <x-forms.input name="duration" type="number" max="300" min="10" step="5" :label="__('Enter exam duration (Minutes)')"
                    :value="old('duration')" required />

                <x-forms.input name="description" type="text" :label="__('Enter exam name')" :value="old('description')" required />

                {{-- <x-forms.textarea name="description" :label="__('Enter question deescription')" :value="old('description')" rows="4" placeholder="This description will show in the question header" /> --}}

                <div class="mb-3 text-end">
                    <button type="submit" value="submit" class="btn btn-primary">{{ __('Start generating') }}</button>
                </div>
            </x-forms.form>
        </div>
    </div>

</x-backend.master>
