@props(['name', 'label' => '', 'class' => '', 'value' => '', 'containerClass' => 'mb-2'])
<div class="{{ $containerClass }}">
    @if ($label)
	<label
        for="{{ $name }}Input"
        class="form-label">{{ $label }}</label>
    @endif
    <textarea
        id="{{ $name }}Input"
        name="{{ $name }}"
        class="form-control {{ $class }} @error($name) is-invalid @enderror"
        {{ $attributes }}
    >{{ $value }}</textarea>
	@error($name)
		<div class="text-danger">{{ $message }}</div>
	@enderror
</div>
