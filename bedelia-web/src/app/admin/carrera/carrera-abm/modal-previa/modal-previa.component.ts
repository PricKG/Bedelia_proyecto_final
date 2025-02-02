import { Component, Inject, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { CursoDTO } from 'src/app/clases/curso-dto';
import { PreviaDTO } from 'src/app/clases/previa-dto';

interface datosEntrada {
  curso: CursoDTO;
  listaCursos: CursoDTO[];
  listaPrevia: PreviaDTO[];
}

@Component({
  selector: 'app-modal-previa',
  templateUrl: './modal-previa.component.html',
  styleUrls: ['./modal-previa.component.css']
})
export class ModalPreviaComponent implements OnInit {

  curso: CursoDTO = this.data.curso;
  listaCurso: CursoDTO[] = this.data.listaCursos;
  listaPrevia: PreviaDTO[] = this.data.listaPrevia;

  public formularioPrevia: FormGroup;
  constructor(public dialogRef: MatDialogRef<ModalPreviaComponent>,
    @Inject(MAT_DIALOG_DATA) public data: datosEntrada) { }

  ngOnInit(): void {

    this.formularioPrevia = new FormGroup({
      cursoPrevio: new FormControl('', [Validators.required]),
      tipoPrevia: new FormControl('', [Validators.required]),
    });
    
  }

  asignarPrevia() {
    let agregar = true;
    let previa : PreviaDTO = new PreviaDTO();
    previa.curso_id = this.curso.id;
    previa.nombre_carrera_previa = (this.formularioPrevia.controls['cursoPrevio'].value).nombre;
    previa.curso_id_previa = (this.formularioPrevia.controls['cursoPrevio'].value).id;
    previa.tipo = this.formularioPrevia.controls['tipoPrevia'].value;

    agregar = ! this.listaPrevia.some(element => element.curso_id_previa == previa.curso_id_previa && element.curso_id == previa.curso_id);

    if(agregar){
      this.listaPrevia.push(previa);
      this.formularioPrevia.reset();
    }
  }

  quitarPrevia(previa:PreviaDTO){
    const index = this.listaPrevia.indexOf(previa);

    if (index >= 0) {
      this.listaPrevia.splice(index, 1);
    }
  }

  aceptar(){
    this.dialogRef.close(this.data);
  }

  cerrar(){
    this.dialogRef.close();
  }
}

