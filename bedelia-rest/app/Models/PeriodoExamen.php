<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PeriodoExamen extends Model
{
    protected $table = "periodo_examen";
    protected $primaryKey = "id";
    protected $fillable = [];

	// devuelve uno
	public function periodo() {
        return $this->belongsTo('App\Models\Periodo', 'id', 'id');
    }

	// devuelve coleccion
    public function examenes() {
        return $this->hasMany('App\Models\Examen');
    }
}
