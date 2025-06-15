<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PenjualanDetail extends Model
{
    use HasFactory;
    protected $table = 'penjualan_detail';
    protected $guarded = ['id'];

    public function barang()
    {
        return $this->belongsTo(Barang::class, 'barang_id');
    }
}
