@props(['cols', 'class' => '', 'actionWidth' => '190'])

<table class="table table-hover {{ $class }}">
    <thead>
        <tr>
            @foreach ($cols as $col)
                <th scope="col"
                @if (strtolower($col) == 'actions' || strtolower($col) == 'preview')
                width="{{ $actionWidth }}" data-sortable="false"
                @endif>{{ $col }}</th>
            @endforeach
        </tr>
    </thead>
    <tbody class="align-middle">
        {{ $slot }}
    </tbody>
</table>
