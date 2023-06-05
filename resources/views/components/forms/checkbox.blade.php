@props([
    'name',
    'legend' => null,
    'labels' => ['chk' => 'Checkbox'],
    'checkedList' => [],
    'valueList' => [],
])

@php
$nameOpt = str_replace("[]", "", $name);
@endphp

@if ($legend)
<fieldset>
<legend>{{ $legend }}</legend>
@endif

@foreach ($labels as $key => $label)

<div class="mb-1">
	<div class="form-check">
		<input
            name="{{ $name }}"
            id="{{ $key }}Input"
            class="form-check-input"
            type="checkbox"
            value="{{ $valueList ? $valueList[$key] : $key }}"
            @if (in_array($key, $checkedList)) checked @endif
        >
		<label
            for="{{ $key }}Input"
            class="form-check-label">{{ $label }}</label>
	</div>
</div>

@endforeach
@error($nameOpt)
    <div class="text-danger">{{ $message }}</div>
@enderror

@if ($legend)
</fieldset>
@endif

@if (array_key_exists('all', $labels))
<script>
    let allInput = document.querySelector('#allInput');
    updateCheckedState(allInput.checked);

    allInput.addEventListener('change', function(e) {
        updateCheckedState(e.target.checked);
    });

    function updateCheckedState(state) {
        document.querySelectorAll('.form-check input').forEach(input => {
            if (input !== allInput) input.disabled = state;
        });
    }
</script>
@endif
