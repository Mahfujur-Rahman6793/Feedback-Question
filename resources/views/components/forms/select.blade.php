@props(['name', 'label' => '', 'class' => '', 'options' => [], 'selected' => '', 'containerClass' => 'mb-2', 'showDefault' => true, 'containerId' => null, 'inputId' => null])
@php
    $nameOpt = str_replace("[]", "", $name);
@endphp
 @if ($containerClass) <div class="{{ $containerClass }}" @if ($containerId) id="{{ $containerId }}" @endif> @endif
	@if ($label)
		<label for="{{ $inputId ?? $nameOpt }}Input" class="form-label">{{ $label }}</label>
	@endif
	<select name="{{ $name }}" id="{{ $inputId ?? $nameOpt }}Input"
		class="form-select form-control {{ $class }} @error($nameOpt) is-invalid @enderror" {{ $attributes }}>
		@if ($showDefault) <option value="" disabled @empty($selected) selected @endempty>Select value</option> @endif
		@foreach ($options as $key => $option)
			<option
                value="{{ $key }}"
                @if ((is_array($selected) && in_array($key, $selected)) || ($key == $selected)) selected @endif
            >{{ $option }}</option>
		@endforeach
	</select>
	@error($nameOpt)
		<div class="text-danger">{{ $message }}</div>
	@enderror
@if ($containerClass) </div> @endif
