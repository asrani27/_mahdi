<?php

namespace App\Http\Controllers;

use App\Models\Maintenance;
use Illuminate\Http\Request;

class MaintenanceController extends Controller
{

    public function maintenance()
    {
        $data = Maintenance::orderBy('id', 'DESC')->get();
        return view('superadmin.maintenance.index', compact('data'));
    }
    public function maintenancecreate()
    {
        return view('superadmin.maintenance.create');
    }
    public function maintenancestore(Request $req)
    {

        $check = Maintenance::where('kode', $req->kode)->first();
        if ($check == null) {
            $attr = $req->all();

            Maintenance::create($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/maintenance');
        } else {
            toastr()->error('Sudah Ada');
            return back();
        }
    }
    public function maintenanceedit($id)
    {
        $data = Maintenance::find($id);
        return view('superadmin.maintenance.edit', compact('data'));
    }
    public function maintenanceupdate(Request $req, $id)
    {
        $attr = $req->all();
        $check = Maintenance::where('kode', $req->kode)->first();
        if ($check == null) {
            //simpan
            Maintenance::find($id)->update($attr);
            toastr()->success('Berhasil disimpan');
            return redirect('/maintenance');
        } else {
            if ($id == $check->id) {

                Maintenance::find($id)->update($attr);
                toastr()->success('Berhasil diupdate');
                return redirect('/maintenance');
            } else {
                toastr()->error('Sudah ada');
                return back();
            }
        }
    }
    public function maintenancedelete($id)
    {
        try {
            Maintenance::find($id)->delete();
            toastr()->success('Berhasil dihapus');
            return back();
        } catch (\Exception $e) {
            toastr()->error('Tidak bisa di hapus karena ada relasi dengan data maintenance');
            return back();
        }
    }
}
