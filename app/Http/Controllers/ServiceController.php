<?php

namespace App\Http\Controllers;

use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{

    public function service()
    {
        $data = Service::orderBy('id', 'DESC')->get();
        return view('superadmin.service.index', compact('data'));
    }
    public function servicecreate()
    {
        return view('superadmin.service.create');
    }
    public function servicestore(Request $req)
    {

        $check = Service::where('kode', $req->kode)->first();
        if ($check == null) {
            $attr = $req->all();

            Service::create($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/service');
        } else {
            toastr()->error('Sudah Ada');
            return back();
        }
    }
    public function serviceedit($id)
    {
        $data = Service::find($id);
        return view('superadmin.service.edit', compact('data'));
    }
    public function serviceupdate(Request $req, $id)
    {
        $attr = $req->all();
        $check = Service::where('kode', $req->kode)->first();
        if ($check == null) {
            //simpan
            Service::find($id)->update($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/service');
        } else {
            if ($id == $check->id) {

                Service::find($id)->update($attr);
                toastr()->success('Berhasil diupdate');
                return redirect('/service');
            } else {
                toastr()->error('Sudah ada');
                return back();
            }
        }
    }
    public function servicedelete($id)
    {
        try {
            Service::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data service');
            return back();
        }
    }
}
