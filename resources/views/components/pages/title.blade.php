{{-- Links array will contain the full hierarchy of links --}}
{{-- The active/current link will be the last item from the links array or it's id will be zero --}}
{{-- Key will hold the route link --}}
@props(['title', 'containerClass' => '', 'links' => []])
<div class="pagetitle {{ $containerClass }}">
	<h1>{{ $title }}</h1>
	@if (!empty($links))
		<nav>
			<ol class="breadcrumb mb-0">
				@foreach ($links as $link => $text)
					<li class="breadcrumb-item @if ($link == 0) active @endif">
						@if ($link == 0)
							{{ $text }}
						@else
							<a href="{{ route($link) }}">{{ $text }}</a>
						@endif
					</li>
				@endforeach
			</ol>
		</nav>
	@endif
</div>
