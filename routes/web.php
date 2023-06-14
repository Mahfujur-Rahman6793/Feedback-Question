<?php

use App\Http\Controllers\AssignedCourseController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\FeedbackController;
use App\Http\Controllers\GenerateQuestionController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\QuestionController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::middleware(['auth', 'verified'])->group(function() {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    // Profile
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    // Users
    Route::prefix('users')->group(function () {
        Route::middleware(['role:admin,chairman'])->group(function() {
            Route::get('/', [UserController::class, 'index'])->name('users.index');
            Route::get('/{user}', [UserController::class, 'show'])->name('users.show');
            Route::patch('/{user}/approve', [UserController::class, 'approve'])->name('users.approve');
            Route::patch('/{user}/disapprove', [UserController::class, 'disapprove'])->name('users.disapprove');
        });

        Route::middleware(['role:admin'])->group(function() {
            Route::get('/{user}/change-role', [UserController::class, 'changeRole'])->name('users.change_role');
            Route::patch('/{user}/change-role', [UserController::class, 'updateRole'])->name('users.update_role');
        });
    });

    // Feedback
    Route::middleware(['role:student'])->group(function() {
        Route::get('/feedbacks/create', [FeedbackController::class, 'create'])->name('feedbacks.create');
        Route::post('/feedbacks', [FeedbackController::class, 'store'])->name('feedbacks.store');
    });

    Route::middleware(['role:chairman'])->group(function() {
        // Feedback
        Route::get('/feedbacks/{user}', [FeedbackController::class, 'show'])->name('feedbacks.show');

        Route::get('assigned-courses', [AssignedCourseController::class, 'index'])->name('assigned_courses.index');
        Route::get('assigned-courses/{user}', [AssignedCourseController::class, 'show'])->name('assigned_courses.show');
        Route::get('assigned-courses/{user}/courses/create', [AssignedCourseController::class, 'create'])->name('assigned_courses.create');
        Route::post('assigned-courses/{user}/courses', [AssignedCourseController::class, 'store'])->name('assigned_courses.store');
        Route::delete('assigned-courses/{user}/courses/{course}', [AssignedCourseController::class, 'destroy'])->name('assigned_courses.destroy');
    });

    Route::middleware(['role:teacher'])->group(function() {
    });

    Route::middleware(['role:chairman,teacher'])->group(function() {
        // Feedback
        Route::get('/feedbacks', [FeedbackController::class, 'index'])->name('feedbacks.index');

        // Question
        Route::resource('questions', QuestionController::class);
        Route::resource('generate-questions', GenerateQuestionController::class);
        Route::get('generate-questions/{question}/pdf', [GenerateQuestionController::class, 'pdf'])->name('generate-questions.pdf');
        Route::get('random', [GenerateQuestionController::class, 'random'])->name('generate.random');
    });

});

require __DIR__.'/auth.php';

Route::redirect('/', '/login');
