<?php

namespace App\Http\Controllers;

use App\Models\Sparepart;
use Illuminate\Http\Request;

class SparepartController extends Controller
{

    public function sparepart()
    {
        $data = Sparepart::orderBy('id', 'DESC')->get();
        return view('superadmin.sparepart.index', compact('data'));
    }
    public function sparepartcreate()
    {
        return view('superadmin.sparepart.create');
    }
    public function sparepartstore(Request $req)
    {


        $check = Sparepart::where('kode', $req->kode)->first();
        if ($check == null) {

            //dd($req->all());
            $attr = $req->all();

            sparepart::create($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/sparepart');
        } else {
            toastr()->error('kode Sudah Ada');
            return back();
        }
    }
    public function sparepartedit($id)
    {
        $data = Sparepart::find($id);
        return view('superadmin.sparepart.edit', compact('data'));
    }
    public function sparepartupdate(Request $req, $id)
    {
        $attr = $req->all();
        $check = Sparepart::where('kode', $req->kode)->first();
        if ($check == null) {
            //simpan
            Sparepart::find($id)->update($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/sparepart');
        } else {
            if ($id == $check->id) {
                Sparepart::find($id)->update($attr);
                toastr()->success('Berhasil diupdate');
                return redirect('/sparepart');
            } else {
                toastr()->error('kode Sudah ada');
                return back();
            }
        }
    }
    public function sparepartdelete($id)
    {
        try {
            Sparepart::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data sparepart');
            return back();
        }
    }
}
