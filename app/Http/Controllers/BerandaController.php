<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Barang;
use App\Models\Penjualan;
use Illuminate\Http\Request;

class BerandaController extends Controller
{
    public function index()
    {
        $data = Barang::get();
        $stok = $data->sum('stok');
        $month = Carbon::now()->month;
        $year = Carbon::now()->year;
        $penjualan = Penjualan::whereMonth('tanggal', $month)->whereYear('tanggal', $year)->sum('total');
        $stokterjual = Penjualan::whereMonth('tanggal', $month)->whereYear('tanggal', $year)->get();

        $st = 0;
        foreach ($stokterjual as $i) {
            $st = $st + $i->penjualandetail->sum('jumlah');
        }

        return view('superadmin.beranda', compact('data', 'stok', 'penjualan', 'st'));
    }
}
