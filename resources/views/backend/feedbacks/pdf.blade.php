<style>
    .row {
        display: flex;
    }

    .row>* {
        width: 100%;
        max-width: 100%;
    }

    .text-center {
        text-align: center;
    }

    .text-end {
        text-align: right;
    }

    .mt-3 {
        margin-top: 10px;
    }

    .my-1 {
        margin-top: 3px;
        margin-bottom: 3px;
    }

    table {
        caption-side: bottom;
        border-collapse: collapse;
    }

    th {
        text-align: inherit;
        text-align: -webkit-match-parent;
    }

    thead,
    tbody,
    tfoot,
    tr,
    td,
    th {
        border-color: inherit;
        border-style: solid;
        border-width: 0;
    }

    .table {
        width: 100%;
        margin-bottom: 1rem;
        vertical-align: top;
        border-color: black;
    }
</style>
<div style="margin: 10px">
    <h3 class="text-center">{{ $deptName }}</h3>
    <h4 class="text-center">Noakhali Science and Technology University</h4>
    <p class="text-center" style="margin-top: 10px">Feedback Report from</p>
    <p class="text-center" style="margin-top: 10px">{{ $start_date_txt . ' to ' . $end_date_txt }}</p>
    <table class="table mt-3" style="">
        <tbody>
            @foreach ($feedbacks as $teacher => $feedback)
                <tr>
                    <td>
                        <h4>{{ $teacher }}</h4>
                        <p style="margin-bottom: 10px;">Average scale: {{ $feedback['avg_scale'] }}</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul>
                            @foreach ($feedback['courses'] as $course_title => $course)
                                <li>
                                    <p style="margin-top:0px; padding-top:0px;">{{ $course_title }}</p>
                                    <p>Average scale: {{ $course['avg_scale'] }}</p>
                                    <ol>
                                        @foreach ($course['comments'] as $comment)
                                            <li>{{ $comment }}</li>
                                        @endforeach
                                    </ol>
                                </li>
                            @endforeach
                        </ul>
                    </td>
                </tr>
            @endforeach

            {{--  @foreach ($question->questions as $q)
                <tr style="padding: 10px 10px; border-width: 1px">
                    <td style="padding: 10px 10px; border-width: 1px; text-align: center; vertical-align: top;">{{ $loop->iteration }}</td>
                    @if ($q['has_sub_questions'])
                        <td colspan="2">
                            <table class="table" style="padding-top: 0px; padding-bottom: 0px; margin-bottom: 0; margin-top: 0;">
                                <tbody>
                                    @foreach ($q['sub_questions'] as $sub)
                                        <tr>
                                            <td width="20px" style="padding: 10px 10px; text-align: center; vertical-align: top;">{{ chr($loop->iteration + 96) }}</td>
                                            <td style="padding: 10px 10px; vertical-align: center;">{!! $sub['question'] !!}</td>
                                            <td width="40px" style="padding: 10px 10px; vertical-align: top; text-align: center;">{{ $sub['marks'] }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </td>
                    @else
                        <td style="padding: 10px 10px; vertical-align: center;">
                            {!! $q['question'] !!}
                        </td>
                        <td width="50px" style="padding: 10px 10px; vertical-align: top; text-align: center;">
                            {{ $q['marks'] }}
                        </td>
                    @endif
                </tr>
            @endforeach --}}
        </tbody>
    </table>
</div>
