<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Modalitas extends Model
{
    protected $table = 'm_modalitas';

    public function jenis_pemeriksaan(){
      return $this->hasOne('App\JenisPemeriksaan', 'id', 'modalitas');
    }

    public function modalitas_files()
    {
        return $this->hasMany('App\ModalitasFiles', 'modalitas_id', 'id')
       ->orderBy('id', 'desc');
    }
}
