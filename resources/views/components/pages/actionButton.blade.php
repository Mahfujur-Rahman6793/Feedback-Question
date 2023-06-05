@props(['link', 'title', 'icon' => null])
<a
    title="{{ $title }}"
    href="{{ $link }}"
    {{ $attributes->merge(['class' => 'btn btn-sm btn-outline-primary']) }}
    >
	@if ($icon)
        <i class="bi bi-{{ $icon }}"></i>
    @else
        {{ $title }}
    @endif
</a>
