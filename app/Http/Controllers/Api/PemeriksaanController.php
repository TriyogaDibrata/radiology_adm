<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\JenisPemeriksaan;
use Illuminate\Http\Request;

class PemeriksaanController extends Controller
{
    public function getList(Request $request){

        $id = $request->input('id');

        $q = JenisPemeriksaan::join('m_risiko', 'm_risiko.id', 'm_jenis_pemeriksaan.risiko')
        ->join('m_modalitas', 'm_modalitas.id', 'm_jenis_pemeriksaan.modalitas')
        ->select('m_jenis_pemeriksaan.*', 'm_risiko.dosis', 'm_modalitas.modalitas', 'm_modalitas.deskripsi as deskripsi_alat');

        if($id){
          $q->where('m_jenis_pemeriksaan.id', $id);
        }

        $list = $q->get();

        return response()->json($list);
    }

    public function getRisiko(Request $request){

        $id = $request->input('id');

        $q = JenisPemeriksaan::join('m_risiko', 'm_risiko.id', 'm_jenis_pemeriksaan.risiko')
        ->join('m_apd', 'm_apd.id', 'm_risiko.apd_id')
        ->select('m_jenis_pemeriksaan.id', 'm_jenis_pemeriksaan.jenis_pemeriksaan', 'm_risiko.dosis', 'm_risiko.risiko', 'm_apd.apd', 'm_apd.deskripsi as deskripsi_apd');

        if($id){
          $q->where('m_jenis_pemeriksaan.id', $id);
        }

        $risiko = $q->get();

        return response()->json($risiko);
    }



}
