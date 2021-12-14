<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GoodsMaster extends Model
{
    use HasFactory;

    protected $table = 'goods_master';

    protected $guarded = [];

    public function produk() 
    {
        return $this->belongsTo(Produk::class, 'kode_produk', 'kode_produk');
    }

    public function modal() {
        return $this->belongsTo(Modal::class, 'id_modal', 'id');
    }

    public function modal_product() {
        return $this->belongsTo(Modal::class, 'id_modal', 'id')->pluck('modal_product');
    }

    public function stock() {
        return $this->belongsTo(Stock::class, 'id_stock', 'id');
    }

    public function kategori() {
        return $this->belongsTo(Kategori::class, 'id_kategori', 'id');
    }

}
