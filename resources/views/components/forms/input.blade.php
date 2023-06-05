@props(['name', 'type', 'label' => '', 'class' => '', 'value' => '', 'containerClass' => 'mb-2', 'disabled' => false])

@if ($containerClass) <div class="{{ $containerClass }}"> @endif
    @if ($label)
    <label
        for="{{ $name }}Input"
        class="form-label">{{ $label }}</label>
    @endif
    <input
        type="{{ $type }}"
        id="{{ $name }}Input"
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
