@php
    $title = __('Dashboard');
    $user = auth()->user();
@endphp
<x-backend.master :title="$title">

    <x-pages.title :links="[$title]" :title="$title" />
    <x-forms.message />

    <section class="section dashboard">
        <div class="row">
            @if (!$user->approved_at && !auth()->user()->isStudent())
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Notice</h5>
                        <h5 class="text-info">Please get approval from @if ($user->isChairman()) Registrar office @else department Chairman/Director @endif</h5>
                    </div>
                </div>
            </div>
            @else

            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">

                    @if ($user->isTeacher())
                    <div class="col-xxl-3 col-md-6">
                        <div class="card info-card sales-card">
                            <div class="card-body">
                                <h5 class="card-title">Total Question</h5>
                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-chat-dots"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>{{ $total_question }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xxl-3 col-md-6">
                        <div class="card info-card sales-card">
                            <div class="card-body">
                                <h5 class="card-title">Chapter wise questions</h5>
                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-chat-dots"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>{{ $chapter_question }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xxl-3 col-md-6">
                        <div class="card info-card sales-card">
                            <div class="card-body">
                                <h5 class="card-title">Scenario wise questions</h5>
                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-chat-dots"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>{{ $scenario_question }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xxl-3 col-md-6">
                        <div class="card info-card sales-card">
                            <div class="card-body">
                                <h5 class="card-title">Rating</h5>
                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-people"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>{{ $teacher_rating }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif

                    @if ($user->isAdmin())
                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card revenue-card">
                            <div class="card-body">
                                <h5 class="card-title">Chairman</h5>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-people"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>{{ $chairman_count }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif

                    @if ($user->isStudent() || $user->isChairman())
                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card revenue-card">
                            <div class="card-body">
                                <h5 class="card-title">Courses</h5>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-journal-text"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>{{ $course_count }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-4 col-md-6">
                        <div class="card info-card revenue-card">
                            <div class="card-body">
                                <h5 class="card-title">Teacher</h5>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-people"></i>
                                    </div>
                                    <div class="ps-3">
                                        <h6>{{ $teacher_count }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif

                    @if ($user->isAdmin() || $user->isChairman())

                    <!-- Request-->
                    <div class="col-12">
                        <div class="card recent-sales overflow-auto">

                            <div class="card-body">
                                <h5 class="card-title">Latest Requests</h5>

                                <table class="table table-borderless datatable">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Teacher</th>
                                            <th scope="col">E-mail</th>
                                            <th scope="col">Department</th>
                                            <th scope="col">Approval for</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @forelse ($requests as $user)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $user->name }}</td>
                                            <td>{{ $user->email }}</td>
                                            <td>{{ $user->department->name }}</td>
                                            <td>{{ $user->role->title }}</td>
                                        </tr>
                                        @empty
                                        <tr><td colspan="5">No latest requests</td></tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    @endif

                </div>
            </div><!-- End Left side columns -->
            @endif
    </section>
</x-backend.master>
