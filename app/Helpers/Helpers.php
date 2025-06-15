<?php

use App\Models\Barang;
use App\Models\Satuan;
use App\Models\Pelanggan;
use App\Models\BarangToko;
use App\Models\Penjualan;
use App\Models\Teknisi;

function satuan()
{
    return Satuan::get();
}

function penjualan()
{
    return Penjualan::orderBy('id', 'DESC')->get();
}

function teknisi()
{
    return Teknisi::orderBy('id', 'DESC')->get();
}
function pelanggan()
{
    return Pelanggan::orderBy('id', 'DESC')->get();
}
function barang()
{
    return Barang::orderBy('id', 'DESC')->get();
}
function convertBulan($bulan)
{
    if ($bulan == '01') {
        $hasil = 'Januari';
    } elseif ($bulan == '02') {
        $hasil = 'Februari';
    } elseif ($bulan == '03') {
        $hasil = 'Maret';
    } elseif ($bulan == '04') {
        $hasil = 'April';
    } elseif ($bulan == '05') {
        $hasil = 'Mei';
    } elseif ($bulan == '06') {
        $hasil = 'Juni';
    } elseif ($bulan == '07') {
        $hasil = 'Juli';
    } elseif ($bulan == '08') {
        $hasil = 'Agustus';
    } elseif ($bulan == '09') {
        $hasil = 'September';
    } elseif ($bulan == '10') {
        $hasil = 'Oktober';
    } elseif ($bulan == '11') {
        $hasil = 'November';
    } elseif ($bulan == '12') {
        $hasil = 'Desember';
    }
    return $hasil;
}

function barangToko($id)
{
    $data = Barang::orderBy('id', 'DESC')->get()->map(function ($item) use ($id) {
        $harga = BarangToko::where('barang_id', $item->id)->where('toko_id', $id)->first();
        $item->harga = $harga == null ? 0 : $harga->harga;
        $item->harga_modal = $harga == null ? 0 : $harga->harga_modal;
        $item->harga_grosir = $harga == null ? 0 : $harga->harga_grosir;
        $item->diskon = $harga == null ? 0 : $harga->diskon;
        $item->harga_jual = $harga == null ? 0 : $harga->harga_jual;
        return $item;
    });
    return $data;
}
