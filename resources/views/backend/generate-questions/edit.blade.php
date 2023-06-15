@php
    $title = __('Generate Question');
@endphp

<x-backend.master :title="$title">

    <x-pages.title :links="['dashboard' => __('Dashboard'), $title]" :title="$title" />
    <x-forms.message />

    <div class="card">
        <div class="card-body">
            <h5 class="card-title"></h5>
            <div class="row">
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
                <h5 class="text-center">Noakhali Science and Technology University</h5>
                @if ($deptName == 'Institute of Information Technology (IIT)')
                <h5 class="text-center">
                    Bachelor of Science in Software Engineering
                </h5>
                @endif
                <h5 class="text-center">{{ $question->exam_name }}</h5>
                <div class="col-md-6 mt-3">
                    <h5>Course Code: {{ $question->course->code }}</h5>
                    <h5>Course Title: {{ $question->course->title }}</h5>
                </div>
                <div class="col-md-6 text-end mt-3">
                    <h5>Total Marks: {{ $question->total_marks }}</h5>
                    <h5>Duration: {{ $question->duration }} Minutes</h5>
                </div>
                <h5 class="text-center">{{ $question->description }}</h5>
            </div>
            <x-forms.form :action="route('generate-questions.update', $question->id)" method="PATCH" class="row px-3 py-3">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th width="20px">#</th>
                            <th>Data</th>
                        </tr>
                    </thead>
                    <tbody>
                        @for ($i = 1; $i <= $question->total_questions; $i++)
                        <tr>
                            <td>{{ $i }}</td>
                            <td>
                                <div class="row">
                                    <x-forms.select containerClass="col-md-4" containerId="type_{{ $i }}" inputId="type_{{ $i }}" name="type[]" label="Select question type" :options="$questionTypes" :selected="old('type[]')" required />
                                    <x-forms.input containerClass="col-md-4 d-none" containerId="sub_count_{{ $i }}" inputId="sub_count_{{ $i }}" name="sub_count[]" type="number" max="10" min="1" step="1" :label="__('Enter count of sub questions')" :value="old('sub_count[]')" required />
                                    <x-forms.input containerClass="col-md-4 d-none" containerId="marks_{{ $i }}" inputId="marks_{{ $i }}" name="marks[]" type="number" max="10" min="1" step="1" :label="__('Enter question marks')" :value="old('marks[]')" required />
                                    <div class="col-md-4 d-flex align-items-center">
                                        <button type="button" class="btn btn-sm btn-info d-none" id="btnQuestion_{{ $i }}" data-index="{{ $i }}">Get question</button>
                                    </div>
                                    <div class="col-12 mt-3">
                                        <input type="hidden" name="question[]" id="question_{{ $i }}Input" required>
                                        <p class="d-none" id="question_{{ $i }}"></p>
                                    </div>
                                    <div class="col-12 mt-2" id="sub_question_{{ $i }}">

                                    </div>
                                </div>
                            </td>
                        </tr>
                        @endfor
                    </tbody>
                </table>

    @push('customjs')
    <script>
        let selectedQs = [];
        sessionStorage.setItem('question', JSON.stringify(selectedQs));
        function updateView(typeValue, i) {
            if (typeValue == 1) { // Chapter
                $("#sub_count_" + i).removeClass('d-none');
                // $("#sub_count_" + i + "Input").removeAttr('disabled');

                $('#question_' + i).addClass('d-none');
                $('#question_' + i + 'Input').attr('disabled', true);
                $('#question_' + i + 'Input').val(null);
                $('#btnQuestion_' + i).addClass('d-none');
                $('#marks_' + i).addClass('d-none');
                $('#marks_' + i + "Input").attr('disabled', true);

                addSubQuestion($("#sub_count_" + i + "Input").val(), i);
            } else if (typeValue == 2) { // Scenario
                $("#sub_count_" + i).addClass('d-none');
                $("#sub_count_" + i + "Input").val(1);
                // $("#sub_count_" + i + "Input").attr('disabled', true);

                $('#question_' + i).removeClass('d-none');
                $('#question_' + i + 'Input').removeAttr('disabled');
                $('#btnQuestion_' + i).removeClass('d-none');
                $('#marks_' + i).removeClass('d-none');
                $('#marks_' + i + "Input").removeAttr('disabled');

                $('#sub_question_' + i).html("");
            }
        }

        function addSubQuestion(sub_count, index) {
            if (sub_count == null || sub_count == "") return;

            let html = "<table class='mt-2 table table-responsive'>" +
                "<thead>" +
                    "<tr><th scope='col' colspan='4' class='text-center'>Sub Questions</th></tr>" +
                    "<tr><th scope='col'>#</th>" +
                        "<th scope='col'>Question</th>" +
                        "<th scope='col'>Marks</th>" +
                        "<th scope='col'></th>" +
                    "</tr>" +
                "</thead><tbody>";
            for (let i = 1; i <= sub_count; i += 1) {
                html += "<tr>";
                html += "<td>" + i + "</td>";
                html += `<td id='question_${index}_${i}'>` + "" + "</td>";
                // "<label for=\"marks_1_iInput\" class=\"form-label\">Enter question marks</label>"
                html += "<td width=''>" +
                    `<input type="hidden" name="question[${index - 1}][]" id="question_${index}_${i}Input" required>` +
                    `<input type=\"number\" id=\"marks_${index}_${i}Input\" name=\"marks[${index - 1}][]\" class=\"form-control\" max=\"10\" min=\"0\" step=\"1\" required>` +
                    "</td>";
                html += `<td><button type=\"button\" class=\"btn btn-sm btn-info\" id=\"btnQuestion_${index}_${i}\" data-index=\"${index}\" data-subindex=\"${i}\">Get question</button></td>`;
                html += "</tr>";

                $(document).on('click', `#btnQuestion_${index}_${i}`, (e) => getQuestion(index, i));
            }
            html += "</tbody></table>";
            $('#sub_question_' + index).html( html );
        }

        function getQuestion(index, subIndex) {
            let sub = `_${index}`;
            if (subIndex) {
                sub += `_${subIndex}`;
            }
            let questionMarks = $(`#marks${sub}Input`).val();
            let questionType = $(`#type_${index}Input`).val();
            $.ajax({
                url: "{{ route('generate.random') }}",
                type: 'GET',
                data: {
                    selected: JSON.parse(sessionStorage.getItem('question')),
                    course_id: {{ $question->course_id }},
                    marks: questionMarks,
                    question_type_id: questionType
                },
                success: function(response) {
                    if (response.data) {
                        $(`#question${sub}`).html(response.data);
                        $(`#question${sub}Input`).val(response.id);
                        selectedQs.push(response.id);
                        sessionStorage.setItem('question', JSON.stringify(selectedQs));
                    } else {
                        console.log(response);
                        alert('No question found');
                    }
                },
                error: function(xhr, status, error) {
                    console.error(error);
                    console.log(xhr.responseText);
                }
            });
        }

        $(document).ready(function() {
            let question_count = {{ $question->total_questions }};
            for (let i = 1; i <= question_count; i += 1) {
                // console.log($("#type_" + i + "Input"));
                $(document).on('change', `#type_${i}Input`, (e) => updateView(e.target.value, i));
                // $("#type_" + i + "Input").on('change', (e) => updateView(e.target.value, i));
                updateView($("#type_" + i + "Input").val(), i);

                $(document).on('change', `#sub_count_${i}Input`, (e) => addSubQuestion(e.target.value, i));
                // $("#sub_count_" + i + "Input").on('change', (e) => addSubQuestion(e.target.value, i))
                // console.log($("#sub_count_" + i + "Input").attr('disabled'));
                if ($("#sub_count_" + i).hasClass('d-none') == false) {
                    addSubQuestion($("#sub_count_" + i + "Input").val(), i)
                }

                $(document).on('click', `#btnQuestion_${i}`, (e) => getQuestion(i, null));
            }
        })
    </script>
    @endpush

{{--
                <x-forms.textarea name="name" :label="__('Enter question')" :value="old('name', $question->name)" rows="4" required autofocus/>

                <x-forms.input name="marks" type="number" max="10" min="0" step="1" :label="__('Enter question marks')"
                    :value="old('marks', $question->marks)" required />

                <x-forms.select name="type" label="Select question type" :options="$questionTypes" :selected="old('type', $question->question_type_id)"
                    required />

                <x-forms.select name="course" label="Select course" :options="$courses" :selected="old('course', $question->course_id)" required />
 --}}
                <div class="mb-3 text-end">
                    <button type="submit" value="submit" class="btn btn-primary">{{ __('Save') }}</button>
                </div>
            </x-forms.form>
        </div>
    </div>

</x-backend.master>
