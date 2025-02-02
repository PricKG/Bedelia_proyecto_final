import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { MatSnackBar } from '@angular/material/snack-bar';
import { Router } from '@angular/router';
import { CarreraDTO } from 'src/app/clases/carrera-dto';
import { EdicionCursoDTO } from 'src/app/clases/edicion-curso-dto';
import { openSnackBar } from 'src/app/global-functions';
import { AnioLectivoService } from 'src/app/servicios/anio-lectivo.service';
import { EdicionesCursoService } from 'src/app/servicios/ediciones-curso.service';
import { EstudianteService } from 'src/app/servicios/estudiante.service';
import { UsuariosService } from 'src/app/servicios/usuarios.service';

@Component({
  selector: 'app-inscripcion-curso',
  templateUrl: './inscripcion-curso.component.html',
  styleUrls: ['./inscripcion-curso.component.css']
})
export class InscripcionCursoComponent implements OnInit {
  selectedOptions: number[] = [];
  listaCurso: EdicionCursoDTO[] = [];
  listaCarrera: CarreraDTO[] = [];
  ciEstudiante: string;
  periodoOk:boolean = undefined;


  public formulario: FormGroup;
  
  constructor(private router:Router, private _snackBar: MatSnackBar, protected usuServ: UsuariosService,
    protected estudianteServis: EstudianteService, protected edicionCursoServ: EdicionesCursoService,
    protected alecServ:AnioLectivoService) { }

  ngOnInit(): void {
    this.alecServ.enPeriodo('IC').subscribe(
      (data) => { this.periodoOk = true; },
      (error) => { this.periodoOk = false; }
    );

    this.ciEstudiante = this.usuServ.obtenerDatosLoginAlmacenado().cedula;

    this.estudianteServis.getCarreras(this.ciEstudiante).subscribe(
      (datos) => {
        this.listaCarrera = datos;
      },
      (error) => {
        openSnackBar(this._snackBar, "Error al cargar las carreras");
      }
    );

    this.formulario = new FormGroup({
      carrera: new FormControl('', [Validators.required])
    });
  }

  cargarMateria() {
    this.edicionCursoServ.getEdicionesParaInscribirse(this.ciEstudiante, this.formulario.controls['carrera'].value).subscribe(
      (datos) => {
        this.listaCurso = datos;
      },
      (error) => {
        openSnackBar(this._snackBar, "Error al obtener los cursos para la carrera seleccionada");
      }
    );
  }

  confirmar() {
    console.log(this.selectedOptions)
    let usu = this.usuServ.obtenerDatosLoginAlmacenado();
    this.edicionCursoServ.inscripciones(this.ciEstudiante, this.selectedOptions).subscribe(
      (datos) => {
        this.router.navigate(['/']);
      },
      (error)=>{
        openSnackBar(this._snackBar, "Error al inscribirse a una materia");
      }
    );
  }

}
