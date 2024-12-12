<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://unpkg.com/filepond@^4/dist/filepond.css" rel="stylesheet" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <script src="https://unpkg.com/filepond@^4/dist/filepond.js"></script>


    <nav class="navbar bg-dark border-bottom navbar-expand-lg border-body" data-bs-theme="dark">

        <div class="container">
            <a class="navbar-brand" href="/">Tech Jobs</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">

                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/">Home</a>
                  
                      </li>

                      @if (Auth::check())
                    {{-- drop down --}}
                    <li class="nav-item dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <img src="{{ Storage::url(auth()->user()->profile_pic)}}" width="40"
                                class="rounded-circle" alt="">
                        </button>
                        <ul class="dropdown-menu">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page"
                                    href="{{ route('seeker.profile') }}">Profile</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page"
                                    href="{{ route('job.applied') }}">Job Applied</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " id="logout" href="#">logout</a>
                            </li>

                        </ul>
                    </li>
                    @endif
                    {{-- drop dowmn --}}
                 
                    @if (!Auth::check())
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('create.seeker') }}">Job Seeker</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">Login</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link " href="{{ route('create.employer') }}">Employer</a>
                        </li>
                    @endif
                  
                    <form id="form-logout" action="{{ route('logout') }}" method="post">@csrf</form>
                </ul>
            </div>
        </div>
    </nav>




    @yield('content')
    <script>
        let logout = document.getElementById('logout');
        let form = document.getElementById('form-logout');
        logout.addEventListener('click', function() {
            form.submit();
        })
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
</body>

</html>
