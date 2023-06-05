@props(['class' => null])
@if (session('message'))
    @if (session('type') == 'danger')
    <x-pages.modalMessage class="onload" :message="session('message')"/>
    @else
	<div class="row no-gutters {{ $class }}">
		<div class="col-lg-5 col-md-12 ms-auto">
			<div
                class="alert alert-dismissible fade show
                @if (session('type'))
                    alert-{{ session('type') }}
                @else
                    alert-dark
                @endif"
                role="alert">
				{{-- exclamation, info, check --}}
				@if (session('icon'))
                    <i class="bi bi-{{ session('icon') }}-circle"></i>
                @endif
				{{ session('message') }}
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
		</div>
	</div>
    @endif
@endif
