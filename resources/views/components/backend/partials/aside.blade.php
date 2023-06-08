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
                        Chairman
                        @else
                        Teacher
                        @endif
                    </span>
                </a>
            </li><!-- End user menu -->
        @endif

        @if (auth()->user()->isChairman())
        <!-- Assign Course -->
        <li class="nav-item">
            <a class="nav-link @if ($title != 'Assigned Course List') collapsed @endif" href="#">
                <i class="bi bi-journal-text"></i>
                <span>Assigned Course</span>
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
        @php
            $isQuestion = false;
            if (!empty($title)) {
                $questionTitles = ['Question List', 'View Question', 'Edit Question', 'Add Question'];
                $generateTitles = ['Generated Question List', 'View Generated Question', 'Create Generated Question'];
                $isGenQuestion = in_array($title, $generateTitles);
                $isAddQuestion = in_array($title, $questionTitles);
                $isQuestion = $isAddQuestion || $isGenQuestion;
            }
        @endphp
        <!-- Question -->
        <li class="nav-item">
            <a class="nav-link @if (!$isQuestion) collapsed @endif" data-bs-target="#questions-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>Question</span><i
                    class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="questions-nav" class="nav-content collapse @if ($isQuestion) show @endif" data-bs-parent="#sidebar-nav">
                <li>
                    <a class="nav-link @if (!$isAddQuestion) collapsed @endif" href="{{ route('questions.index') }}">
                        <i class="bi bi-circle"></i><span>Add</span>
                    </a>
                </li>
                <li>
                    <a class="nav-link @if (!$isGenQuestion) collapsed @endif" href="#">
                        <i class="bi bi-circle"></i><span>Generate</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End_Question -->
        @endif

        @if (!auth()->user()->isAdmin())
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
