import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {MatCardModule} from '@angular/material/card';
import { HttpClientModule, HTTP_INTERCEPTORS} from '@angular/common/http';
import { ReactiveFormsModule, FormsModule} from '@angular/forms';

import {MatButtonModule} from '@angular/material/button';
import {MatToolbarModule} from '@angular/material/toolbar';
import {MatIconModule} from '@angular/material/icon';
import {MatSidenavModule} from '@angular/material/sidenav';
import {MatListModule} from '@angular/material/list'; 
import {MatExpansionModule} from '@angular/material/expansion';
import {ListaCarrerasComponent } from './acceso-publico/lista-carreras/lista-carreras.component';
import { LoginComponent } from './acceso-publico/login/login.component'; 
import {MatInputModule} from '@angular/material/input';
import {MatFormFieldModule} from '@angular/material/form-field';
import {MatSnackBarModule} from '@angular/material/snack-bar'; 
import {MatSelectModule} from '@angular/material/select';
import {MatTableModule} from '@angular/material/table'; 
import {MatDatepickerModule} from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material/core';
import {MatChipsModule} from '@angular/material/chips'; 
import { CambiarContraseniaComponent } from './usuarios/cambiar-contrasenia/cambiar-contrasenia.component';
import { UsuariosComponent } from './admin/usuarios/usuarios.component';
import { RolesPipe } from './pipes/roles.pipe';
import { UsuarioABMComponent } from './admin/usuarios/usuario-abm/usuario-abm.component';
import { SedesComponent } from './admin/sedes/sedes.component';
import { SedeABMComponent } from './admin/sedes/sede-abm/sede-abm.component';
import { AreaEstudioComponent } from './admin/area-estudio/area-estudio.component';
import { AreaEstudioABMComponent } from './admin/area-estudio/area-estudio-abm/area-estudio-abm.component';
import { TipoCursoComponent } from './admin/tipo-curso/tipo-curso.component';
import { TipoCursoABMComponent } from './admin/tipo-curso/tipo-curso-abm/tipo-curso-abm.component';
import { CursoComponent } from './admin/curso/curso.component';
import { CursoABMComponent } from './admin/curso/curso-abm/curso-abm.component';
import { AnioLectivoABMComponent } from './admin/anio-lectivo-abm/anio-lectivo-abm.component';
import { CarreraComponent } from './admin/carrera/carrera.component';
import { CarreraABMComponent } from './admin/carrera/carrera-abm/carrera-abm.component';
import { CarreraVistaComponent } from './acceso-publico/carrera-vista/carrera-vista.component';
import { NgxGraphModule } from '@swimlane/ngx-graph';
import { ModalPreviaComponent } from './admin/carrera/carrera-abm/modal-previa/modal-previa.component';
import { RevicionInscripcionesPostulantesComponent } from './administrativo/revicion-inscripciones-postulantes/revicion-inscripciones-postulantes.component';
import {MatProgressSpinnerModule} from '@angular/material/progress-spinner';
import { SexoPipe } from './pipes/sexo.pipe';
import { InscripcionCarreraComponent } from './acceso-publico/inscripcion-carrera/inscripcion-carrera.component';
import {MatStepperModule} from '@angular/material/stepper';
import { ModalInformarComponent } from './administrativo/revicion-inscripciones-postulantes/modal-informar/modal-informar.component';
import { VerMasComponent } from './administrativo/revicion-inscripciones-postulantes/ver-mas/ver-mas.component';
import { AsignarDocenteComponent } from './administrativo/asignar-docente/asignar-docente.component';
import { InscripcionCursoComponent } from './estudiante/inscripcion-curso/inscripcion-curso.component';
import { InscripcionExamenComponent } from './estudiante/inscripcion-examen/inscripcion-examen.component';
import { ControlAsistenciaComponent } from './docente/control-asistencia/control-asistencia.component';
import { IngresarResultadoCursoComponent } from './docente/ingresar-resultado-curso/ingresar-resultado-curso.component';
import { IngresarResultadoExamenComponent } from './docente/ingresar-resultado-examen/ingresar-resultado-examen.component';
import { IngresarNotaComponent } from './docente/ingresar-resultado-curso/ingresar-nota/ingresar-nota.component';
import { IngresarNotaExamenComponent } from './docente/ingresar-resultado-examen/ingresar-nota-examen/ingresar-nota-examen.component';
import { ConsultaEscolaridadComponent } from './estudiante/consulta-escolaridad/consulta-escolaridad.component';
import { JustificarInasistenciaComponent } from './administrativo/justificar-inasistencia/justificar-inasistencia.component';
import { InasistencaPipe } from './pipes/inasistenca.pipe';
import { NotaPipe } from './pipes/nota.pipe';
import { FechaNullPipe } from './pipes/fecha-null.pipe';
import { RevicionActaComponent } from './administrativo/revicion-acta/revicion-acta.component';
import { TipoActaPipe } from './pipes/tipo-acta.pipe';
import { VerificacionEscolaridadComponent } from './acceso-publico/verificacion-escolaridad/verificacion-escolaridad.component';
import { InterceptorTokenInterceptor } from './interceptores/interceptor-token.interceptor';
import { DescripcionInscripcionCursoPipe } from './pipes/descripcion-inscripcion-curso.pipe';
import { DescripcionInscripcionExamenPipe } from './pipes/descripcion-inscripcion-examen.pipe';
import { EstadoPostulacionPipe } from './pipes/estado-postulacion.pipe';

import { HashLocationStrategy, LocationStrategy } from '@angular/common';
import { OptativoObligatorioPipe } from './pipes/optativo-obligatorio.pipe';
import { DialogoConfirmacionComponent } from './usuarios/dialogo-confirmacion/dialogo-confirmacion.component';

@NgModule({
  declarations: [
    AppComponent,
    ListaCarrerasComponent,
    LoginComponent,
    UsuariosComponent,
    RolesPipe,
    UsuarioABMComponent,
    SedesComponent,
    SedeABMComponent,
    AreaEstudioComponent,
    AreaEstudioABMComponent,
    TipoCursoComponent,
    TipoCursoABMComponent,
    CursoComponent,
    CursoABMComponent,
    AnioLectivoABMComponent,
    CarreraComponent,
    CarreraABMComponent,
    CarreraVistaComponent,
    ModalPreviaComponent,
    RevicionInscripcionesPostulantesComponent,
    SexoPipe,
    InscripcionCarreraComponent,
    ModalInformarComponent,
    VerMasComponent,
    AsignarDocenteComponent,
    InscripcionCursoComponent,
    InscripcionExamenComponent,
    CambiarContraseniaComponent,
    ControlAsistenciaComponent,
    IngresarResultadoCursoComponent,
    IngresarResultadoExamenComponent,
    IngresarNotaComponent,
    IngresarNotaExamenComponent,
    ConsultaEscolaridadComponent,
    JustificarInasistenciaComponent,
    InasistencaPipe,
    NotaPipe,
    FechaNullPipe,
    RevicionActaComponent,
    TipoActaPipe,
    VerificacionEscolaridadComponent,
    DescripcionInscripcionCursoPipe,
    DescripcionInscripcionExamenPipe,
    EstadoPostulacionPipe,
    OptativoObligatorioPipe,
    DialogoConfirmacionComponent,
  ],
  imports: [
    MatStepperModule,
    MatProgressSpinnerModule,
    NgxGraphModule,
    MatChipsModule,
    MatDatepickerModule,
    MatNativeDateModule,
    MatSelectModule,
    MatSnackBarModule,
    MatFormFieldModule,
    MatInputModule,
    MatExpansionModule,
    MatListModule,
    MatSidenavModule,
    MatIconModule,
    MatToolbarModule,
    MatButtonModule,
    MatCardModule,
    MatTableModule,
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    HttpClientModule,
    ReactiveFormsModule,
    FormsModule
  ],
  providers: [
    {
      provide: HTTP_INTERCEPTORS,
      useClass: InterceptorTokenInterceptor,
      multi: true
    },
    {
      provide: LocationStrategy, 
      useClass: HashLocationStrategy
    },
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
