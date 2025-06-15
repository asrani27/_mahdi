<?php

namespace App\Http\Controllers;

use App\Models\Keranjang;
use Illuminate\Http\Request;

class KeranjangController extends Controller
{
    public function delete($id)
    {
        Keranjang::find($id)->delete();
        return back();
    }

    public function updateHarga(Request $req)
    {
        $data = Keranjang::find($req->keranjang_id);
        $diskon = ((($data->harga - $req->harga_jual) / $data->harga) * 100);

        $update = $data;
        $update->diskon = $diskon;
        $update->harga_jual = $req->harga_jual;
        $update->total = $req->harga_jual * $data->jumlah;
        $update->save();
        toastr()->success('Harga Di update');
        return back();
    }
}
