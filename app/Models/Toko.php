<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Toko extends Model
{
    use HasFactory;
    protected $table = 'toko';
    protected $guarded = ['id'];

    public function hargaFinal()
    {
        return $this->belongsToMany(Barang::class, 'barang_id', 'toko_id', 'barang_toko');
    }
}
