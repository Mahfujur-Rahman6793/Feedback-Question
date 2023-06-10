<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('generate_questions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('course_id');
            $table->integer('duration')->nullable();
            $table->integer('total_marks')->nullable();
            $table->integer('total_questions')->nullable();
            $table->string('description')->nullable();
            $table->json('questions')->nullable();

            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('course_id')->references('id')->on('courses');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('generate_questions');
    }

    /*
     * questions json column
     *
     [
        {
            'question_id': id,
            'question': '<full_question>',
            'type_id': 'id',
            'type': 'type_name',
            'marks': 10,
            'has_sub_questions': true/false,
            'sub_questions': [
                {
                    'id': id,
                    'question': <>,
                    'marks': 10,
                },
            ],
        },
     ]
     */
};
