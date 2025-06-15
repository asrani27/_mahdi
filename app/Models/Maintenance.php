<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Maintenance extends Model
{
    use HasFactory;
    protected $table = 'maintenance';
    protected $guarded = ['id'];
    public function penjualan()
    {
        return $this->belongsTo(Penjualan::class, 'penjualan_id');
    }
    public function teknisi()
    {
        return $this->belongsTo(Teknisi::class, 'teknisi_id');
    }
}
