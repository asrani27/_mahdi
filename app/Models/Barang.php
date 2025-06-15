<?php

namespace App\Models;

use App\Models\BarangToko;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Barang extends Model
{
    use HasFactory;
    protected $table = 'barang';
    protected $guarded = ['id'];

    public function satuan()
    {
        return $this->belongsTo(Satuan::class, 'satuan_id');
    }

    public function toko()
    {
        return $this->belongsToMany(Toko::class, 'barang_toko', 'barang_id', 'toko_id')->withPivot('harga');
    }
}
