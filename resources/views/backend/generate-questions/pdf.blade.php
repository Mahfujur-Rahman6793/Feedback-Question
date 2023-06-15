<style>
.row {
  display: flex;
}
.row > * {
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
    <h4 class="text-center">
        @php
            $deptName = $question->course->department->name;
            if ($deptName == 'Software Engineering') {
                $deptName = 'Institute of Information Technology (IIT)';
            } else if ($deptName == 'Department of Information Sciences and Library Management') {
                $deptName = 'Institute of Information Sciences (IIS)';
            }
        @endphp
        {{ $deptName }}
    </h4>
    <h4 class="text-center">Noakhali Science and Technology University</h4>
    @if ($deptName == 'Institute of Information Technology (IIT)')
        <h5 class="text-center">
            Bachelor of Science in Software Engineering
        </h5>
    @endif
    <h5 class="text-center">{{ $question->exam_name }}</h5>
    <table style="width: 100%;">
        <tr>
            <td>Course Code: {{ $question->course->code }}</td>
            <td class="text-end">Total Marks: {{ $question->total_marks }}</td>
        </tr>
        <tr>
            <td>Course Title: {{ $question->course->title }}</td>
            <td class="text-end">Duration: {{ $question->duration }} Minutes</td>
        </tr>
    </table>
    <p class="text-center" style="margin-top: 10px">{{ $question->description }}</p>
    <table class="table mt-3" style="">
        <tbody>
            @foreach ($question->questions as $q)
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
            @endforeach
        </tbody>
    </table>
</div>
