<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Penjualan extends Model
{
    use HasFactory;
    protected $table = 'penjualan';
    protected $guarded = ['id'];

    public function penjualandetail()
    {
        return $this->hasMany(PenjualanDetail::class, 'penjualan_id');
    }

    public function toko()
    {
        return $this->belongsTo(Toko::class, 'toko_id');
    }
    public function pelanggan()
    {
        return $this->belongsTo(Pelanggan::class, 'pelanggan_id');
    }
}
