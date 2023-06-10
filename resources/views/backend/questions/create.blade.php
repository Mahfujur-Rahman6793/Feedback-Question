@php
    $title = __('Add Question');
@endphp

<x-backend.master :title="$title">
    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />

    <x-forms.message />

    <x-head.tinymce-config />

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <x-forms.form :action="route('questions.store')" method="POST" class="row px-3 py-3" id="questionStore" >
                <x-forms.textarea name="name" :label="__('Enter question')" :value="old('name')" rows="4" class="tinymce" required autofocus/>

                <x-forms.input name="marks" type="number" max="10" min="0" step="1" :label="__('Enter question marks')"
                    :value="old('marks')" required />

                <x-forms.select name="type" label="Select question type" :options="$questionTypes" :selected="old('type')"
                    required />

                <x-forms.select name="course" label="Select course" :options="$courses" :selected="old('course')" required />

                <div class="mb-3 text-end">
                    <button type="submit" value="submit" id="btnSubmit" class="btn btn-primary">{{ __('Add question') }}</button>
                </div>
            </x-forms.form>
        </div>
    </div>

    @push('customjs')
    <script>
        $(document).ready(function() {
            // Get the form and submit button elements
            var form = $("#questionStore");
            var submitButton = $("#btnSubmit");

            // Add event listener to the form submit button
            submitButton.on("click", function(event) {
                // Prevent the default form submission
                event.preventDefault();

                // Manually trigger the form submission
                form.submit();
            });
        });
    </script>

    @endpush

</x-backend.master>
