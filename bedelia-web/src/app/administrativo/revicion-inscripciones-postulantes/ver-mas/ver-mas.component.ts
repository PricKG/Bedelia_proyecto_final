import { Component, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatSnackBar } from '@angular/material/snack-bar';
import { ActivatedRoute, Router } from '@angular/router';
import { PersonaDTO } from 'src/app/clases/persona-dto';
import { PostulanteDTO } from 'src/app/clases/postulante-dto';
import { openSnackBar } from 'src/app/global-functions';
import { PostulanteService } from 'src/app/servicios/postulante.service';
import { ModalInformarComponent } from '../modal-informar/modal-informar.component';

@Component({
  selector: 'app-ver-mas',
  templateUrl: './ver-mas.component.html',
  styleUrls: ['./ver-mas.component.css']
})
export class VerMasComponent implements OnInit {

  constructor(private router: Router,private _snackBar: MatSnackBar, public dialog: MatDialog, private rutaActiva: ActivatedRoute, protected postulanteServis: PostulanteService) { }

  postulante: PostulanteDTO = undefined;
  persona: PersonaDTO = undefined;
  permitirAcciones: boolean = false;
  enviandoDatos:boolean = false;

  ngOnInit(): void {

    let parametrosId: number = this.rutaActiva.snapshot.params.id;

    if (parametrosId != undefined) {
      this.postulanteServis.get(parametrosId).subscribe(
        (datos) => {
          this.postulante = datos;
          this.persona = datos.persona;
          this.permitirAcciones = this.postulante.estado == null || this.postulante.estado == 'N';
        }
      );
    }

  }

  informarProblema() {
    const dialogRef = this.dialog.open(ModalInformarComponent);
    dialogRef.afterClosed().subscribe(result => {
      if (result == undefined) return; // le dio 'Volver'
      let elMensaje = result;
      openSnackBar(this._snackBar, "Enviando mensaje...", 'ok');
      this.enviandoDatos = true;

      this.postulanteServis.notificar(this.postulante.id, elMensaje).subscribe(
        (datos) => {
          this.enviandoDatos = false;
          openSnackBar(this._snackBar, "El mensaje fue enviado correctamente", 'ok');
        },
        (error) => {
          this.enviandoDatos = false;
          openSnackBar(this._snackBar, "No se pudo enviar el mensaje");
        }
      )
    });
  }

  rechasar() {
    this.postulanteServis.rechasar(this.postulante.id).subscribe(
      (datos) => {
        this.router.navigate(['/administrativo/revicion-postulante']);
      },
      (error) => {
        openSnackBar(this._snackBar, "No se pudo rechazar la postulación");
      }
    )
  }

  aceptar() {
    this.enviandoDatos = true;
    this.postulanteServis.aceptar(this.postulante.id).subscribe(
      (datos) => {
        this.router.navigate(['/administrativo/revicion-postulante']);
      },
      (error) => {
        this.enviandoDatos = false;
        openSnackBar(this._snackBar, "No se pudo aceptar la postulación");
      }
    );
  }

  abrirImagen(base64 :string){
    
  }

}
