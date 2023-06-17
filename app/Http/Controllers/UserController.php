<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = auth()->user();
        $users = User::query();
        if ($user->isChairman()) {
            $users->where('role_id', User::TYPE_TEACHER) // Get only teachers
                ->where('department_id', $user->department_id);
        } else if ($user->isAdmin()) {
            $users->where('role_id', User::TYPE_CHAIRMAN); // Get only chairmans
        }

        $users = $users->where('id', '!=', auth()->id())
                        ->where('role_id', '!=', User::TYPE_STUDENT)
                        ->with(['role', 'department'])->latest()->paginate(15);
        return view('backend.users.index', compact('users'));
    }

    public function show(User $user)
    {
        return view('backend.users.show', compact('user'));
    }

    public function changeRole(User $user)
    {
        $roles = Role::pluck('title', 'id')->toArray();
        unset($roles[1]);
        unset($roles[4]);
        return view('backend.users.change_role', compact('roles', 'user'));
    }

    public function updateRole(Request $request, User $user)
    {
        $user->update([
            'role_id' => $request->role_id
        ]);

        return redirect()
            ->route('users.index')
            ->withMessage('Successfully Updated Role');
    }

    public function approve(User $user)
    {
        $user->update([
            'approved_at' => now(),
        ]);
        return redirect()
            ->route('users.index')
            ->withMessage('Successfully approved ' . $user->name);
    }

    public function disapprove(User $user)
    {
        // dd($user);
        $user->update([
            'approved_at' => null,
        ]);
        return redirect()
            ->route('users.index')
            ->withMessage('Successfully disapproved ' . $user->name);
    }

}
