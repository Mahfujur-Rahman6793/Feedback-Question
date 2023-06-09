<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ $title ?? config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    {{-- <link rel="stylesheet" href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap"> --}}

    <!-- Scripts -->
    {{-- @vite(['resources/css/app.css', 'resources/js/app.js']) --}}


    <!-- Favicons -->
    <link href="{{ asset('assets/img/favicon.png') }}" rel="icon">
    <link href="{{ asset('assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{ asset('assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
    {{-- <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet"> --}}
    {{-- <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet"> --}}
    {{-- <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet"> --}}
    {{-- <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet"> --}}
    {{-- <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet"> --}}

    <!-- Template Main CSS File -->
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
</head>

<body>
    <x-backend.partials.navbar />

    <x-backend.partials.aside :title="$title" />

    <main id="main" class="main" style="min-height: calc(100vh - 130px)">
        {{ $slot }}
    </main>

    <x-backend.partials.footer />

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="{{ asset('assets/vendor/jquery/jquery.min.js') }}"></script>
    {{-- <script src="assets/vendor/apexcharts/apexcharts.min.js"></script> --}}

    <script src="{{ asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    {{-- <script src="assets/vendor/chart.js/chart.umd.js"></script> --}}
    {{-- <script src="assets/vendor/echarts/echarts.min.js"></script> --}}
    {{-- <script src="assets/vendor/quill/quill.min.js"></script> --}}
    {{-- <script src="assets/vendor/simple-datatables/simple-datatables.js"></script> --}}
    {{-- <script src="assets/vendor/tinymce/tinymce.min.js"></script> --}}
    {{-- <script src="assets/vendor/php-email-form/validate.js"></script> --}}

    <!-- Template Main JS File -->
    <script src="{{ asset('assets/js/main.js') }}"></script>

    @stack('customjs')

</body>

</html>
