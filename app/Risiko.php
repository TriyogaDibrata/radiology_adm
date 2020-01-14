<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Risiko extends Model
{
    protected $table = 'm_risiko';

    public function jenis_pemeriksaan(){
      return $this->hasOne('App\JenisPemeriksaan', 'id', 'risiko');
    }
}
