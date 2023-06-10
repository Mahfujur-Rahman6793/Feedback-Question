@props(['name', 'type', 'label' => '', 'class' => '', 'value' => '', 'containerClass' => 'mb-2', 'disabled' => false, 'containerId' => null, 'inputId' => null])
@php
    $nameOpt = str_replace("[]", "", $name);
@endphp
@if ($containerClass) <div class="{{ $containerClass }}" @if ($containerId) id="{{ $containerId }}" @endif> @endif
    @if ($label)
    <label
        for="{{ $inputId ?? $nameOpt }}Input"
        class="form-label">{{ $label }}</label>
    @endif
    <input
        type="{{ $type }}"
        id="{{ $inputId ?? $nameOpt }}Input"
        name="{{ $name }}"
        @if ($value) value="{{ $value }}" @endif
        class="form-control {{ $class }} @error($name) is-invalid @enderror"
        @disabled($disabled)
        {{ $attributes }}
        {{-- $attributes->merge(['attr' => 'val']) can be used to merge default value with component callee value --}}
    >
    @error($name)
        <div class="text-danger">{{ $message }}</div>
    @enderror
@if ($containerClass) </div> @endif
