<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Apd extends Model
{
    protected $table = 'm_apd';

    public function apd_files()
    {
        return $this->hasMany('App\ApdFiles', 'apd_id', 'id')
       ->orderBy('id', 'asc');
    }
}
