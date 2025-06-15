<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TokoController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\SatuanController;
use App\Http\Controllers\BerandaController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\KeranjangController;
use App\Http\Controllers\MaintenanceController;
use App\Http\Controllers\PelangganController;
use App\Http\Controllers\PenjualanController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\SparepartController;
use App\Http\Controllers\TeknisiController;

Route::get('/', [LoginController::class, 'showlogin'])->name('login');
Route::post('/login', [LoginController::class, 'login']);

Route::group(['middleware' => ['auth', 'role:superadmin']], function () {
    Route::get('/beranda', [BerandaController::class, 'index']);
    Route::get('/logout', [LogoutController::class, 'logout']);

    Route::get('/user', [UserController::class, 'index']);
    Route::get('/user/add', [UserController::class, 'add']);
    Route::get('/user/edit/{id}', [UserController::class, 'edit']);
    Route::get('/user/delete/{id}', [UserController::class, 'delete']);
    Route::post('/user/add', [UserController::class, 'store']);
    Route::post('/user/edit/{id}', [UserController::class, 'update']);

    Route::get('/satuan', [SatuanController::class, 'satuan']);
    Route::get('/satuan/create', [SatuanController::class, 'satuancreate']);
    Route::post('/satuan/create', [SatuanController::class, 'satuanstore']);
    Route::get('/satuan/edit/{id}', [SatuanController::class, 'satuanedit']);
    Route::post('/satuan/edit/{id}', [SatuanController::class, 'satuanupdate']);
    Route::get('/satuan/delete/{id}', [SatuanController::class, 'satuandelete']);
    Route::get('/pelanggan', [PelangganController::class, 'pelanggan']);
    Route::get('/pelanggan/create', [PelangganController::class, 'pelanggancreate']);
    Route::post('/pelanggan/create', [PelangganController::class, 'pelangganstore']);
    Route::get('/pelanggan/edit/{id}', [PelangganController::class, 'pelangganedit']);
    Route::post('/pelanggan/edit/{id}', [PelangganController::class, 'pelangganupdate']);
    Route::get('/pelanggan/delete/{id}', [PelangganController::class, 'pelanggandelete']);
    Route::get('/teknisi', [TeknisiController::class, 'teknisi']);
    Route::get('/teknisi/create', [TeknisiController::class, 'teknisicreate']);
    Route::post('/teknisi/create', [TeknisiController::class, 'teknisistore']);
    Route::get('/teknisi/edit/{id}', [TeknisiController::class, 'teknisiedit']);
    Route::post('/teknisi/edit/{id}', [TeknisiController::class, 'teknisiupdate']);
    Route::get('/teknisi/delete/{id}', [TeknisiController::class, 'teknisidelete']);

    Route::get('/barang', [BarangController::class, 'barang']);
    Route::get('/barang/create', [BarangController::class, 'barangcreate']);
    Route::post('/barang/create', [BarangController::class, 'barangstore']);
    Route::get('/barang/edit/{id}', [BarangController::class, 'barangedit']);
    Route::post('/barang/edit/{id}', [BarangController::class, 'barangupdate']);
    Route::get('/barang/delete/{id}', [BarangController::class, 'barangdelete']);

    Route::get('/service', [ServiceController::class, 'service']);
    Route::get('/service/create', [ServiceController::class, 'servicecreate']);
    Route::post('/service/create', [ServiceController::class, 'servicestore']);
    Route::get('/service/edit/{id}', [ServiceController::class, 'serviceedit']);
    Route::post('/service/edit/{id}', [ServiceController::class, 'serviceupdate']);
    Route::get('/service/delete/{id}', [ServiceController::class, 'servicedelete']);

    Route::get('/maintenance', [MaintenanceController::class, 'maintenance']);
    Route::get('/maintenance/create', [MaintenanceController::class, 'maintenancecreate']);
    Route::post('/maintenance/create', [MaintenanceController::class, 'maintenancestore']);
    Route::get('/maintenance/edit/{id}', [MaintenanceController::class, 'maintenanceedit']);
    Route::post('/maintenance/edit/{id}', [MaintenanceController::class, 'maintenanceupdate']);
    Route::get('/maintenance/delete/{id}', [MaintenanceController::class, 'maintenancedelete']);

    Route::get('/sparepart', [SparepartController::class, 'sparepart']);
    Route::get('/sparepart/create', [SparepartController::class, 'sparepartcreate']);
    Route::post('/sparepart/create', [SparepartController::class, 'sparepartstore']);
    Route::get('/sparepart/edit/{id}', [SparepartController::class, 'sparepartedit']);
    Route::post('/sparepart/edit/{id}', [SparepartController::class, 'sparepartupdate']);
    Route::get('/sparepart/delete/{id}', [SparepartController::class, 'sparepartdelete']);

    Route::get('/toko', [TokoController::class, 'toko']);
    Route::get('/toko/barang/editharga/{barang_id}/{toko_id}', [TokoController::class, 'editharga']);
    Route::post('/toko/barang/editharga/{barang_id}/{toko_id}', [TokoController::class, 'updateharga']);
    Route::get('/toko/barang/{id}', [TokoController::class, 'tokobarang']);
    Route::get('/toko/create', [TokoController::class, 'tokocreate']);
    Route::post('/toko/create', [TokoController::class, 'tokostore']);
    Route::get('/toko/edit/{id}', [TokoController::class, 'tokoedit']);
    Route::post('/toko/edit/{id}', [TokoController::class, 'tokoupdate']);
    Route::get('/toko/delete/{id}', [TokoController::class, 'tokodelete']);


    Route::get('/penjualan', [PenjualanController::class, 'penjualan']);
    Route::get('/penjualan/create', [PenjualanController::class, 'transaksi']);
    Route::get('/penjualan/toko/{id}', [PenjualanController::class, 'penjualantoko']);
    Route::get('/penjualan/toko/{id}/create', [PenjualanController::class, 'transaksi']);
    Route::post('/penjualan/create', [PenjualanController::class, 'transaksisimpan']);
    Route::get('/penjualan/toko/{id}/batal', [PenjualanController::class, 'transaksibatal']);
    Route::get('/penjualan/toko/{id}/delete/{penjualan_id}', [PenjualanController::class, 'transaksidelete']);
    Route::get('/penjualan/toko/{id}/print/{penjualan_id}', [PenjualanController::class, 'transaksiprint']);

    Route::get('/keranjang/delete/{id}', [KeranjangController::class, 'delete']);
    Route::post('/keranjang/editharga', [KeranjangController::class, 'updateHarga']);
    Route::get('/laporan', [LaporanController::class, 'index']);
    Route::get('/laporan/penjualan', [LaporanController::class, 'penjualan']);
    Route::get('/laporan/maintenance', [LaporanController::class, 'maintenance']);
    Route::get('/laporan/service', [LaporanController::class, 'service']);
    Route::post('/laporan', [LaporanController::class, 'pdf']);
});
