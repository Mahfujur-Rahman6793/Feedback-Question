@props(['link', 'title', 'color' => 'danger', 'icon' => 'trash', 'iconOnly' => true, 'spaced' => true])
<form class="d-inline-block @if ($spaced) mx-1 @endif" action="{{ $link }}" method="POST">
	@csrf
	@method('patch')
	<button
        title="{{ $title }}"
        class="btn btn-outline-{{ $color }} btn-sm"
        type="submit"
        onclick="return confirm('Are you sure to {{ strtolower($title) }}?')">
        {{-- <i class="bi bi-{{ $icon }}"></i>
        @if (!$iconOnly) {{ $title }} @endif --}}
        {{ $title }}
    </button>
</form>
