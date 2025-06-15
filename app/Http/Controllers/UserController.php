<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    public function index()
    {
        $data = User::all();
        return view('superadmin.user.index', compact('data'));
    }

    public function add()
    {
        return view('superadmin.user.create');
    }

    public function store(Request $req)
    {
        $check = User::where('username', $req->username)->first();
        if ($check != null) {
            toastr()->error('username sudah di gunakan');
            return back();
        } else {
            $role = Role::where('name', 'superadmin')->first();
            $s = new User;
            $s->name = $req->name;
            $s->username = $req->username;
            $s->password = Hash::make($req->password);

            $s->save();
            $s->roles()->attach($role);
            toastr()->success('Berhasil disimpan');
            return redirect('/user');
        }
    }

    public function edit($id)
    {
        $data = User::find($id);
        return view('superadmin.user.edit', compact('data'));
    }

    public function update(Request $req, $id)
    {
        if ($req->password == null) {
            $s = User::find($id);
            $s->name = $req->name;
            $s->username = $req->username;
            $s->save();
            toastr()->success('Berhasil diupdate');
        } else {
            $s = User::find($id);
            $s->name = $req->name;
            $s->username = $req->username;
            $s->password = Hash::make($req->password);
            $s->save();
            toastr()->success('Berhasil diupdate');
        }
        return redirect('/user');
    }

    public function delete($id)
    {
        $delete = User::find($id)->delete();
        toastr()->success('Berhasil dihapus');
        return redirect('/user');
    }
}
