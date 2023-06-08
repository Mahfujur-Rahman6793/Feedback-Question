<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="nav-link @if ($title != 'Dashboard') collapsed @endif" href="{{ route('dashboard') }}">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->

        @if (auth()->user()->isAdmin() ||
                auth()->user()->isChairman())
            <!-- User -->
            <li class="nav-item">
                <a class="nav-link @if ($title != 'User List') collapsed @endif" href="{{ route('users.index') }}">
                    <i class="bi bi-person"></i>
                    <span>
                        @if (auth()->user()->isAdmin())
                        User
                        @else
                        Teacher
                        @endif
                    </span>
                </a>
            </li><!-- End user menu -->
        @endif

        <!-- Student -->
        {{-- <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <i class="bi bi-question-circle"></i>
                <span>Student</span>
            </a>
        </li><!-- End Student --> --}}

        @if (auth()->user()->isTeacher())
        <!-- Question -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>Question</span><i
                    class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="#">
                        <i class="bi bi-circle"></i><span>Add</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="bi bi-circle"></i><span>Generate</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End_Question -->
        @endif

        @if (auth()->user()->isTeacher() || auth()->user()->isChairman())
        <!-- Feedback -->
        <li class="nav-item">
            <a class="nav-link @if ($title != 'Feedback') collapsed @endif" href="#">
                <i class="bi bi-question-circle"></i>
                <span>Feedback</span>
            </a>
        </li><!-- End Feedback -->
        @endif

    </ul>

</aside>
