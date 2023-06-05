@props(['class', 'message', 'id' => 'modalMessage', 'title' => 'Message'])
@if ($class)
	<div class="modal fade {{ $class }}" id="{{ $id }}" data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="{{ $id }}Label" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="{{ $id }}Label">{{ $title }}</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					{{ $message }}
				</div>
			</div>
		</div>
	</div>
@endif
