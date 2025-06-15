<?php

namespace App\Http\Controllers;

use App\Models\Pelanggan;
use Illuminate\Http\Request;

class PelangganController extends Controller
{

    public function pelanggan()
    {
        $data = Pelanggan::orderBy('id', 'DESC')->get();
        return view('superadmin.pelanggan.index', compact('data'));
    }
    public function pelanggancreate()
    {
        return view('superadmin.pelanggan.create');
    }
    public function pelangganstore(Request $req)
    {
        $attr = $req->all();

        $check = Pelanggan::where('nama', $req->nama)->first();
        if ($check == null) {
            Pelanggan::create($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/pelanggan');
        } else {
            toastr()->error('Sudah Ada');
            return back();
        }
    }
    public function pelangganedit($id)
    {
        $data = Pelanggan::find($id);
        return view('superadmin.pelanggan.edit', compact('data'));
    }
    public function pelangganupdate(Request $req, $id)
    {
        $attr = $req->all();
        $check = Pelanggan::where('nama', $req->nama)->first();
        if ($check == null) {
            //simpan
            Pelanggan::find($id)->update($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/pelanggan');
        } else {
            if ($id == $check->id) {
                Pelanggan::find($id)->update($attr);
                toastr()->success('Berhasil diupdate');
                return redirect('/pelanggan');
            } else {
                toastr()->error('Sudah ada');
                return back();
            }
        }
    }
    public function pelanggandelete($id)
    {
        try {
            pelanggan::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data barang');
            return back();
        }
    }
}
