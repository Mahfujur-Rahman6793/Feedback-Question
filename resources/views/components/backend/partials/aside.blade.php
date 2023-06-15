@php
    $user = auth()->user();
@endphp
<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="nav-link @if ($title != 'Dashboard') collapsed @endif" href="{{ route('dashboard') }}">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->

        @if (($user->isAdmin() || $user->isChairman()) && $user->approved_at)
            <!-- User -->
            <li class="nav-item">
                <a class="nav-link @if ($title != 'User List') collapsed @endif" href="{{ route('users.index') }}">
                    <i class="bi bi-person"></i>
                    <span>
                        @if ($user->isAdmin())
                        Chairman
                        @else
                        Teacher
                        @endif
                    </span>
                </a>
            </li><!-- End user menu -->
        @endif

        @if ($user->isChairman() && $user->approved_at)
        @php
            $isAssignCourse = false;
            $isCourse = false;
            if (!empty($title)) {
                $assignTitles = ['Assigned Course List', 'View Assigned Course', 'Assign Course'];
                $courseTitles = ['Course List', 'View Course', 'Create New Course', 'Edit Course'];
                $isAssignCourse = in_array($title, $assignTitles);
                $isCourse = in_array($title, $courseTitles);
            }
        @endphp

        <!-- Assign Course -->
        <li class="nav-item">
            <a class="nav-link @if (!$isAssignCourse) collapsed @endif" href="{{ route('assigned_courses.index') }}">
                <i class="bi bi-journal-text"></i>
                <span>Assigned Course</span>
            </a>
        </li><!-- End menu -->

        <!-- Course -->
        <li class="nav-item">
            <a class="nav-link @if (!$isCourse) collapsed @endif" href="{{ route('courses.index') }}">
                <i class="bi bi-journal-text"></i>
                <span>Courses</span>
            </a>
        </li><!-- End menu -->
        @endif

        @if (($user->isChairman() || $user->isTeacher()) && $user->approved_at)
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
                    <a class="nav-link @if (!$isGenQuestion) collapsed @endif" href="{{ route('generate-questions.index') }}">
                        <i class="bi bi-circle"></i><span>Generate</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End_Question -->
        @endif

        @if (($user->isChairman() || $user->isTeacher()) && $user->approved_at)
        <!-- Feedback -->
        <li class="nav-item">
            <a class="nav-link @if (!in_array($title, ['Feedback List', 'Show Feedback', 'Generate Feedback Report'])) collapsed @endif" href="{{ route('feedbacks.index') }}">
                <i class="bi bi-question-circle"></i>
                <span>Feedback</span>
            </a>
        </li><!-- End Feedback -->
        @endif

        @if ($user->isStudent())
        <!-- Add Feedback -->
        <li class="nav-item">
            <a class="nav-link @if ($title != 'Add Feedback') collapsed @endif" href="{{ route('feedbacks.create') }}">
                <i class="bi bi-question-circle"></i>
                <span>Add Feedback</span>
            </a>
        </li><!-- Add Feedback -->
        @endif

    </ul>

</aside>
