<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Blogs</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ asset('/public/css/main.css') }}">


    </head>
    <body >
        <div class="container-fluid">
            @include('pages.header')
            @include('pages.nav')
            @yield('content')
        </div>

        <div class="container footer">
            <p>Đây là footer</p>
        </div>

        <script type="text/javascript" href="{{ asset('js/app.js') }}"></script>
    </body>
</html>
