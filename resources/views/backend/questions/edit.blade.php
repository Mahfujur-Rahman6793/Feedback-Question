@php
    $title = __('Edit Question');
@endphp

<x-backend.master :title="$title">

    <x-forms.message />

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <x-forms.form :action="route('questions.update', $question->id)" method="PATCH" class="row px-3 py-3">
                <x-forms.textarea name="name" :label="__('Enter question')" :value="old('name', $question->name)" rows="4" required autofocus/>

                <x-forms.input name="marks" type="number" max="10" min="0" step="1" :label="__('Enter question marks')"
                    :value="old('marks', $question->marks)" required />

                <x-forms.select name="type" label="Select question type" :options="$questionTypes" :selected="old('type', $question->question_type_id)"
                    required />

                <x-forms.select name="course" label="Select course" :options="$courses" :selected="old('course', $question->course_id)" required />

                <div class="mb-3 text-end">
                    <button type="submit" value="submit" class="btn btn-primary">{{ __('Edit question') }}</button>
                </div>
            </x-forms.form>
        </div>
    </div>

</x-backend.master>
