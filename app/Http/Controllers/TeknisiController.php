<?php

namespace App\Http\Controllers;

use App\Models\Teknisi;
use Illuminate\Http\Request;

class TeknisiController extends Controller
{

    public function teknisi()
    {
        $data = Teknisi::orderBy('id', 'DESC')->get();
        return view('superadmin.teknisi.index', compact('data'));
    }
    public function teknisicreate()
    {
        return view('superadmin.teknisi.create');
    }
    public function teknisistore(Request $req)
    {
        $attr = $req->all();

        $check = Teknisi::where('nama', $req->nama)->first();
        if ($check == null) {
            Teknisi::create($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/teknisi');
        } else {
            toastr()->error('Sudah Ada');
            return back();
        }
    }
    public function teknisiedit($id)
    {
        $data = Teknisi::find($id);
        return view('superadmin.teknisi.edit', compact('data'));
    }
    public function teknisiupdate(Request $req, $id)
    {
        $attr = $req->all();
        $check = Teknisi::where('nama', $req->nama)->first();
        if ($check == null) {
            //simpan
            Teknisi::find($id)->update($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/teknisi');
        } else {
            if ($id == $check->id) {
                Teknisi::find($id)->update($attr);
                toastr()->success('Berhasil diupdate');
                return redirect('/teknisi');
            } else {
                toastr()->error('Sudah ada');
                return back();
            }
        }
    }
    public function teknisidelete($id)
    {
        try {
            Teknisi::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data barang');
            return back();
        }
    }
}
