<?php

namespace Database\Seeders;

use App\Models\Course;
use App\Models\Department;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Random courses
        // Course::factory(100)->create();

        $dept_se_id = Department::where('short_name')->first()?->id;
        if ($dept_se_id) {
            $courses = [
                'CSE1101' => ['Structured Programming', 1],
                'CSE1102' => ['Structured Programming Lab', 2],
                'CSE1103' => ['Discrete Mathematics', 3],
                'STAT1105' => ['Probability and Statistics for Engineers-I', 3],
                'MATH1107' => ['Calculus and Analytical Geometry', 3],
                'GE1109' => ['Soft Skill Communication', 3],
                'GE1111' => ['Technology and Society', 2],
                'GE1112' => ['Technology and Society Lab', 1],
                'SE1113' => ['Introduction to Software Engineering', 3],
                'CSE1201' => ['Data Structure', 1],
                'CSE1202' => ['Data Structure Lab', 2],
                'CSE1203' => ['Computer Organization', 2],
                'CSE1204' => ['Computer Organization Lab', 1],
                'STAT1205' => ['Probability and Statistics for Engineers-II', 3],
                'MATH1207' => ['Ordinary Differential Equations', 3],
                'GE1209' => ['History of Emergency of Bangladesh', 3],
                'GE1211' => ['Bengali Literature', 3],
                'SE1213' => ['Object Oriented Concepts I', 2],
                'SE1214' => ['Object Oriented Concepts I Lab', 1],
                'CSE2101' => ['Algorithm Analysis', 2],
                'CSE2102' => ['Algorithm Analysis Lab', 1],
                'SE2103' => ['Theory of Computation', 2],
                'SE2104' => ['Theory of Computation Lab', 1],
                'CSE2105' => ['Computer Networks', 2],
                'CSE2106' => ['Computer Networks Lab', 1],
                'MATH2107' => ['Numerical Analysis for Engineers ', 2],
                'MATH2108' => ['Numerical Analysis for Engineers Lab', 1],
                'SE2109' => ['Object Oriented Concepts II', 2],
                'SE2110' => ['Object Oriented Concepts II Lab', 1],
                'SE2112' => ['Software Project Lab I', 3],
                'CSE2201' => ['Operating System and System Programming', 2],
                'CSE2202' => ['Operating System Lab', 1],
                'GE2203' => ['Business Psychology', 3],
                'CSE2205' => ['Information Security', 2],
                'CSE2206' => ['Information Security Lab', 1],
                'CSE2207' => ['Database Management System-I', 2],
                'CSE2208' => ['Database Management System-I Lab', 1],
                'SE2209' => ['Software  Requirements Specification and Analysis', 2],
                'SE2210' => ['Software  Requirements Specification and Analysis Lab', 1],
                'BUS2211' => ['Business Studies Engineers', 3],
                'SE3101' => ['Professional Ethics for Information Systems', 3],
                'CSE3103' => ['Web Technology', 1],
                'CSE3104' => ['Web Technology Lab', 2],
                'CSE3105' => ['Data Science and Analysis-DBMS II', 1],
                'CSE3106' => ['Data Science and Analysis-DBMS II Lab', 2],
                'BUS3107' => ['Business Communications', 2],
                'BUS3108' => ['Business Communications Lab', 1],
                'SE3109' => ['Design Pattern', 2],
                'SE3110' => ['Design Pattern Lab', 1],
                'SE3112' => ['Software Project Lab II', 3],
                'CSE3201' => ['Distributed Systems', 1],
                'CSE3202' => ['Distributed Systems Lab', 2],
                'SE3203' => ['Software Metrics', 2],
                'SE3204' => ['Software Metrics Lab', 1],
                'SE3205' => ['Software Security', 2],
                'SE3206' => ['Software Security Lab', 1],
                'CSE3207' => ['Artificial Intelligence ', 2],
                'CSE3208' => ['Artificial Intelligence Lab', 1],
                'SE3209' => ['Software Testing and Quality Assurance', 2],
                'SE3210' => ['Software Testing and Quality Assurance Lab', 1],
                'SE3211' => ['Software Design and Architecture', 2],
                'SE3212' => ['Software Design and Architecture Lab', 1],
                'SE4100' => ['Internship', 18],
                'SE4202' => ['Project', 6],
                'SE4203' => ['Software Maintenance', 2],
                'SE4204' => ['Software Maintenance Lab', 1],
                'SE4205' => ['Software Project Management', 2],
                'SE4206' => ['Software Project Management Lab', 1],
            ];

            foreach ($courses as $code => $data) {
                Course::create([
                    'department_id' => $dept_se_id,
                    'code' => $code,
                    'title' => $data[0],
                    'credit' => $data[1],
                ]);
            }
        }

        // If there is any default data want to insert. Do this
        /* Course::create([
            'department_id' =>,
            'code' =>,
            'title' =>,
            'credit' =>,
        ]); */
    }
}
