<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produk extends Model
{
    use HasFactory;

    protected $table = 'produk';
    // protected $primaryKey = 'id_produk';
    protected $guarded = [];

    public function goods_master() {
        return $this->hasMany(GoodsMaster::class, 'kode_produk', 'kode_produk');
    }

    public function discount() {
        return $this->hasOne(Discount::class, 'kode_produk', 'kode_produk');
    }
}
