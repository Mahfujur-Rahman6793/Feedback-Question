@props(['link', 'title' => 'Delete', 'iconOnly' => true])
<form class="d-inline-block" action="{{ $link }}" method="POST">
	@csrf
	@method('delete')
	<button
        title="{{ $title }}"
        class="btn btn-outline-danger btn-sm"
        type="submit"
        onclick="return confirm('Are you sure to {{ strtolower($title) }}?')">
        <i class="bi bi-trash"></i>
        @if (!$iconOnly) {{ $title }} @endif
    </button>
</form>
