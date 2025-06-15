<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BarangToko extends Model
{
    use HasFactory;
    protected $table = 'barang_toko';
    protected $guarded = ['id'];

    public function barang()
    {
        return $this->belongsTo(Barang::class, 'barang_id');
    }

    public function toko()
    {
        return $this->belongsTo(Toko::class, 'toko_id');
    }
}
