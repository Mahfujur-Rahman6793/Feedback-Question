@props(['action', 'method', 'class' => ''])
<form
    @if ($class) class="{{ $class }}" @endif
    action="{{ $action }}"
    method="{{ strtolower($method) ==  'get' ? 'get' : 'post' }}"
    {{ $attributes }}>

    @csrf

    @if (strtolower($method) != 'post' || strtolower($method) != 'get')
    @method($method)
    @endif

    {{ $slot }}
</form>
