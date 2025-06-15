<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Toko;
use App\Models\Barang;
use App\Models\Keranjang;
use App\Models\Penjualan;
use App\Models\BarangToko;
use Illuminate\Http\Request;
use App\Models\PenjualanDetail;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Barryvdh\DomPDF\Facade\Pdf;

class PenjualanController extends Controller
{
    public function penjualan()
    {
        $data = Penjualan::orderBy('id', 'DESC')->get();
        return view('superadmin.penjualan.index', compact('data'));
    }

    public function penjualantoko($id)
    {
        $data = Penjualan::where('toko_id', $id)->get();
        $toko = Toko::find($id);
        return view('superadmin.penjualan.penjualan', compact('data', 'toko'));
    }

    public function transaksi()
    {
        // $barang = Barang::whereHas('toko', function ($q) use ($id) {
        //     $q->where('toko_id', '=', $id);
        // })->get();

        // $barang->map(function ($item) use ($id) {
        //     $item->harga = BarangToko::where('barang_id', $item->id)->where('toko_id', $id)->first()->harga;
        //     return $item;
        // });

        $barang = Barang::get();
        $keranjang = Keranjang::get();

        $check = Penjualan::get();
        if (count($check) == 0) {
            $kode = '0000001';
        } else {
            $number = $check->last()->id + 1;
            if (strlen($number) == 1) {
                $kode = '000000' . $number;
            } elseif (strlen($number) == 2) {
                $kode = '00000' . $number;
            } elseif (strlen($number) == 3) {
                $kode = '0000' . $number;
            } elseif (strlen($number) == 4) {
                $kode = $number;
            }
        }

        return view('superadmin.penjualan.create', compact('barang', 'kode', 'keranjang'));
    }

    public function transaksisimpan(Request $req)
    {
        if ($req->button == 'keranjang') {
            if ($req->barang_id == null || $req->jumlah == null) {
                toastr()->error('Barang / Jumlah Belum Di isi');
                $req->flash();
                return back();
            }

            $barang = BarangToko::where('barang_id', $req->barang_id)->first();
            $checkKeranjang = Keranjang::where('barang_id', $req->barang_id)->first();

            if ($checkKeranjang == null) {
                $s = new Keranjang;
                $s->barang_id       = $req->barang_id;
                $s->harga           = $barang->harga;
                $s->jumlah          = $req->jumlah;
                $s->total           = $barang->harga * $req->jumlah;
                $s->save();
            } else {
                $update = $checkKeranjang;
                $update->harga          = $barang->harga;
                $update->jumlah         = $req->jumlah;
                $update->total          = $barang->harga * $req->jumlah;
                $update->save();
            }
            $req->flash();
            return back();
        } else {
            DB::beginTransaction();
            try {
                $keranjang = Keranjang::get();
                if ($keranjang->count() == 0) {
                    toastr()->error('keranjang Pesanan Kosong');
                    $req->flash();
                    return back();
                }
                if ($req->pelanggan_id == null) {
                    toastr()->error('Pilih pelanggan');
                    $req->flash();
                    return back();
                }
                $n = new Penjualan;
                $n->tanggal         = $req->tanggal;
                $n->nota            = $req->nota;
                $n->pelanggan_id    = $req->pelanggan_id;
                $n->total           = $req->total;
                $n->save();

                foreach ($keranjang as $item) {
                    $pd = new PenjualanDetail;
                    $pd->penjualan_id   = $n->id;
                    $pd->barang_id      = $item->barang_id;
                    $pd->harga          = $item->harga;
                    $pd->jumlah         = $item->jumlah;
                    $pd->total          = $item->harga * $item->jumlah;
                    $pd->save();

                    //delete keranjang belanja
                    $item->delete();
                }
                DB::commit();
                toastr()->success('Transaksi Berhasil disimpan');
                return redirect('/penjualan');
                // all good
            } catch (\Exception $e) {
                //dd($e);
                DB::rollback();
                toastr()->error($e);
                return back();
                // something went wrong
            }
        }
    }
    public function transaksibatal($id)
    {
        $keranjang = Keranjang::where('toko_id')->get();
        foreach ($keranjang as $item) {
            $item->delete();
        }
        toastr()->success('Transaksi Di batalkan');
        return back();
    }

    public function transaksidelete($id, $penjualan_id)
    {
        $pj = Penjualan::find($penjualan_id);
        $detail = $pj->penjualandetail;
        foreach ($detail as $barang) {
            $data = Barang::find($barang->barang_id);
            $data->stok = $data->stok + $barang->jumlah;
            $data->save();
        }
        $pj->delete();
        toastr()->success('Transaksi Di Hapus');
        return back();
    }

    public function transaksiprint($id, $penjualan_id)
    {
        $pj = Penjualan::find($penjualan_id);
        return view('superadmin.penjualan.print', compact('pj'));
        // $filename = Auth::user()->name . '-' . Carbon::now()->format('Y-m-d-H-i-s') . '.pdf';
        // return $pdf->stream($filename);
    }
}
