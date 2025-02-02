<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Periodo;

class PeriodoLectivo extends Model
{
    protected $table = "periodo_lectivo";
    protected $primaryKey = "id";
    //aca tambien
    protected $fillable = [];

	// devuelve uno
	public function periodo() {
        return $this->belongsTo('App\Models\Periodo', 'id', 'id');
    }

	// devuelve coleccion
    public function edicionesCurso() {
        return $this->hasMany('App\Models\EdicionCurso');
    }

    // Devuelve el periodo actual segun la fecha, o null si no se encontro ninguno
    public static function periodoActual(){
        $hoy = date('Y-m-d');
        $PeriodoActual = Periodo::where('tipo', 'LE')->where('fecha_inicio', '<=', $hoy)->where('fecha_fin', '>=', $hoy)->orderby('id', 'desc')->first();
        if ($PeriodoActual == null) {
            return null;
        }
        return $PeriodoActual->periodoLectivo;
    }

    // Devuelve el proximo periodo segun la fecha, o null si no se encontro ninguno
    public static function periodoProximo(){
        $hoy = date('Y-m-d');
        $PeriodoProximo = Periodo::where('tipo', 'LE')->where('fecha_inicio', '>', $hoy)->orderby('id', 'asc')->first();
        if ($PeriodoProximo == null) {
            return null;
        }
        return $PeriodoProximo->periodoLectivo;
    }

    // Devuelve el periodo anterior segun la fecha, o null si no se encontro ninguno
    public static function periodoAnterior(){
        $hoy = date('Y-m-d');
        $PeriodoProximo = Periodo::where('tipo', 'LE')->where('fecha_fin', '<', $hoy)->orderby('id', 'desc')->first();
        if ($PeriodoProximo == null) {
            return null;
        }
        return $PeriodoProximo->periodoLectivo;
    }
}
