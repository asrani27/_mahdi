<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;
    protected $table = 'service';
    protected $guarded = ['id'];
    public function pelanggan()
    {
        return $this->belongsTo(Pelanggan::class, 'pelanggan_id');
    }
    public function teknisi()
    {
        return $this->belongsTo(Teknisi::class, 'teknisi_id');
    }
    public function barang()
    {
        return $this->belongsTo(Barang::class, 'barang_id');
    }
    public function sparepart()
    {
        return $this->belongsTo(Sparepart::class, 'teknisi_id');
    }
}
