<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Modalitas extends Model
{
    protected $table = 'm_modalitas';

    public function jenis_pemeriksaan(){
      return $this->hasOne('App\JenisPemeriksaan', 'id', 'modalitas');
    }
}
