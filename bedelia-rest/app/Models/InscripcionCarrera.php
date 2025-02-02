<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class InscripcionCarrera extends Model
{
    protected $table = "inscripcion_carrera";
    protected $primaryKey = "id";
    protected $fillable = [];


	// devuelve uno
    public function sede() {
        return $this->belongsTo('App\Models\Sede');
    }

	// devuelve uno
    public function carrera() {
        return $this->belongsTo('App\Models\Carrera');
    }

	// devuelve uno
    public function estudiante() {
        return $this->belongsTo('App\Models\Estudiante');
    }

}
