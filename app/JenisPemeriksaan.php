<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JenisPemeriksaan extends Model
{
    protected $table = 'm_jenis_pemeriksaan';

    public function files()
    {
        return $this->hasMany('App\JenisPemeriksaanFiles', 'jenis_pemeriksaan_id', 'id')
       ->orderBy('id', 'desc');
    }
}
