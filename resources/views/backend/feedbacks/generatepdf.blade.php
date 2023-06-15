@php
    $title = __('Generate Feedback Report');
@endphp

<x-backend.master :title="$title">
    <x-pages.title :links="['dashboard' => __('Dashboard'), 'feedbacks.index' => __('Feedback List'), $title]" :title="$title" />

    <div class="row text-end my-3">
        <div>
            <a class="btn btn-sm btn-info" href="{{ route('feedbacks.index') }}">List</a>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <x-forms.form :action="route('feedbacks.generate.pdf')" method="POST" class="row px-3 py-3">
                <div class="row">
                    <p>Enter date range:</p>
                    <x-forms.input containerClass="col-md-6" name="start_date" type="date" :label="__('Start date')" :value="old('start_date')" required />
                    <x-forms.input containerClass="col-md-6" name="end_date" type="date" :label="__('End date')" :value="old('end_date', now()->toDateString())" required />
                </div>

                <div class="my-3 text-end">
                    <button type="submit" value="submit" class="btn btn-primary">Get feedback report</button>
                </div>
            </x-forms.form>
        </div>
    </div>

</x-backend.master>
