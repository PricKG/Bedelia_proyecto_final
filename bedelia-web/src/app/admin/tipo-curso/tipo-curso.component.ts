import { Component, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatSnackBar } from '@angular/material/snack-bar';
import { MatTableDataSource } from '@angular/material/table';
import { openSnackBar } from 'src/app/global-functions';
import { TipoCursoService } from 'src/app/servicios/tipo-curso.service';
import { TipoCursoABMComponent } from './tipo-curso-abm/tipo-curso-abm.component';

@Component({
  selector: 'app-tipo-curso',
  templateUrl: './tipo-curso.component.html',
  styleUrls: ['./tipo-curso.component.css']
})
export class TipoCursoComponent implements OnInit {
  // columnas que se mostraran en la tabla
  columnasAMostrar: string[] = ['id', 'tipo'];
  // objeto que necesita la tabla para mostrar el contenido
  tipoDataSource = new MatTableDataSource([]);

  constructor(private _snackBar: MatSnackBar, protected tipoServ: TipoCursoService, public dialog: MatDialog) { }

  ngOnInit(): void {
    this.tipoServ.getAll().subscribe(
      (datos) => {
        this.tipoDataSource.data = datos;
      },(error)=>{
        openSnackBar(this._snackBar, "No se pudieron cargar los tipos de curso desde la base de dato");
      }
    );
  }

  cargarDatos() {
    this.tipoServ.getAll().subscribe(
      (datos) => {
        this.tipoDataSource.data = datos;
      },(error)=>{
        openSnackBar(this._snackBar, "No se pudo cargar los tipos de curso desde la base de dato");
      }
    );
  }

  openDialog() {
    const dialogRef = this.dialog.open(TipoCursoABMComponent, { width: '500px' });

    dialogRef.afterClosed().subscribe(result => {
      this.cargarDatos();
    });
  }

}