<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Ministry of Public Administration</title>

    <!-- Styles -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="{{ asset('css/bootstrap-datepicker.css') }}" rel="stylesheet">
    <link href="{{ asset('css/jquery.dataTables.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.10/css/select2.min.css" rel="stylesheet"/>
    

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <script src="{{ asset('js/jquery-3.5.1.min.js') }}" defer></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js" defer></script>
    <script src="{{ asset('js/bootstrap.min.js') }}" defer></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <!-- <script src="{{ asset('js/app.js') }}" defer></script> -->
    <script src="{{ asset('js/custom.js') }}" defer></script>
    <script src="{{ asset('js/bootstrap-datepicker.js') }}" defer></script>
    <script src="{{ asset('js/jquery.dataTables.min.js') }}" defer></script>
    <script src="{{ asset('js/form-validation.js') }}"></script>
    <script src="https://cdn.tiny.cloud/1/ydybciykv3r9rxxxr18o2d80udshr95fnnk42xurxjdi27pr/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.10/js/select2.min.js"></script>
<script>
    tinymce.init({
        selector: 'textarea.mytextarea',
        content_style: "body { line-height: 1; }",
        plugins: 'lists',
        toolbar: "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | table | fontsizeselect",
        branding: false
    });

    $(document).ready(function() {
        $('table.display').DataTable();
    } );
</script>

  
</head>
<body>
    <div id="app">
        <!-- <nav class="navbar navbar-expand-md navbar-light bg-primary shadow-sm" style="padding: 0px;"> -->
        <nav class="navbar navbar-expand-md shadow-sm" style="padding: 0px;">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    <img src="/img/logo.png" style="height: 45px;">
                    <strong class=" text-white" style="font-size: 20px;">Ministry of Public Administration</strong>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link text-white" href="{{ route('login') }}"><h5>{{ __('Login') }}</h5></a>
                            </li>
                            <!-- @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="{{ route('register') }}"><h5>{{ __('Register') }}</h5></a>
                                </li>
                            @endif -->
                        @else
                            <li><a class="nav-link text-white" href="\" style="font-size: 20px;">Home</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 20px;">
                                  Training
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="\training">Training List</a>
                                    @if(isAdmin())
                                    <a class="dropdown-item" href="\training\create">Training Create</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="\trainingCalender">Calender List</a>
                                    <a class="dropdown-item" href="\trainingCalender\create">Calender Create</a>
                                    @endif
                                    <div class="dropdown-divider"></div>
                                    @if(isAdminAbove())
                                    <a class="dropdown-item" href="\go">GO</a>
                                    @endif
                                    <a class="dropdown-item" href="\report">Report</a>
                                    <a class="dropdown-item" href="\report2">Report Group</a>
                                </div>
                            </li>
                            @if(Auth::user()->user_type == 1)
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 20px;">
                                  Organization
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="\organization">List</a>
                                    <a class="dropdown-item" href="\organization\create">Create</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="\userInstitute">Mapping</a>
                                </div>
                            </li>
                            @endif
                            @if(Auth::user()->user_type == 2)
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 20px;">
                                  Setting
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="\goInformationTemplate">GO Information(Bangla)</a>
                                    <a class="dropdown-item" href="\goInformationTemplateEnglish">GO Information(English)</a>
                                </div>
                            </li>
                            @endif
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle text-white" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 20px;" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    @if(isAdmin())
                                        <a class="dropdown-item" href="\userProfile\create">Profile</a>
                                    @endif
                                    @if(isSuperAdmin())
                                        <a class="dropdown-item" href="{{ route('register') }}">Create New User</a>
                                        <a class="dropdown-item" href="\userlist">User List</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="\entry-user-approval-authority">User Mapping List</a>
                                        <a class="dropdown-item" href="\entry-user-approval-authority\create">New User Mapping</a>
                                        <div class="dropdown-divider"></div>
                                    @endif
                                    <a class="dropdown-item" href="{{ route('password.change') }}">Change password</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-2">
            @yield('content')
        </main>
        <!-- Footer -->
        <footer class="page-footer font-small blue" style="bottom: 0px">
            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">© <?php echo date('Y'); ?> Copyright:
            <a href="https://mopa.gov.bd/"> Ministry of Public Administration </a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
    </div>
    <script>
        $('.datepicker').datepicker({
            dateFormat: "dd-mm-yy"
        });
    </script>                
</body>
</html>
