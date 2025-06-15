<?php

namespace App\Http\Controllers;

use App\Models\Penjualan;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade as PDF;

class LaporanController extends Controller
{
    public function index()
    {
        return view('superadmin.laporan.index');
    }

    public function pdf(Request $req)
    {
        if ($req->button == 'export') {
            $bulan = $req->bulan;
            $tahun = $req->tahun;
            $data = Penjualan::whereMonth('tanggal', $bulan)->whereYear('tanggal', $tahun)->get();
            $data->map(function ($item, $value) {
                $item->total_modal = $item->penjualandetail->sum('harga_beli');
                $item->laba = $item->total - $item->total_modal;
                $item->barang = $item->penjualandetail;
                return $item;
            });

            $pdf = PDF::loadView('superadmin.laporan.pdf_penjualan', compact('bulan', 'tahun', 'data'))->setPaper('legal');
            return $pdf->stream();
        } else {
            $bulan = $req->bulan;
            $tahun = $req->tahun;
            $data = Penjualan::whereMonth('tanggal', $bulan)->whereYear('tanggal', $tahun)->get();
            $data->map(function ($item, $value) {
                $item->total_modal = $item->penjualandetail->sum('harga_beli');
                $item->laba = $item->total - $item->total_modal;
                return $item;
            });

            $pdf = PDF::loadView('superadmin.laporan.detail_penjualan', compact('bulan', 'tahun', 'data'))->setPaper('legal');
            return $pdf->stream();
        }
    }
}
