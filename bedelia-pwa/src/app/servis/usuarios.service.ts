import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { AnioLectivoDTO } from '../clases/anio-lectivo-dto';
import { LoginDTO } from '../clases/login-dto';
import { LoginResponseDTO } from '../clases/login-response-dto';
import { UsuarioDTO } from '../clases/usuario-dto';

@Injectable({
  providedIn: 'root'
})
export class UsuariosService {

  private apiURL: string = environment.apiURL + '/usuarios';
  private loginDataStoreKey:string = "loginData"; // clave para almacenar datos del login en local
  private rolDataStoreKey:string = "rolSeleccionado"; // clave para almacenar rol del login en local
  
  constructor(protected http:HttpClient) { }

  getAll(){
    return this.http.get<UsuarioDTO[]>(this.apiURL);
  }

  get(id:string){
    return this.http.get<UsuarioDTO>(this.apiURL + '/' + id);
  }
  
  enPeriodo(tipo:string){
    return this.http.get<AnioLectivoDTO>(environment.apiURL + '/periodos/actual/' + tipo);
  }

  /** Funciones relacionadas a la sesion del usuario **************************** **/

  login(datos:LoginDTO){
    return this.http.post<LoginResponseDTO>(this.apiURL + '/login', datos);
  }

  /**
   * Cierra la sesion del usuario logueado eliminando sus datos del local storage
   */
  logout(){
    localStorage.removeItem(this.loginDataStoreKey); 
    localStorage.removeItem(this.rolDataStoreKey); 
  }

  /**
   * Devuelve los datos del usuario guardado en localstorage, o NULL si no hay ninguno
   */
  public almacenarDatosLogin(datos:LoginResponseDTO, rol:String){
    localStorage.setItem(this.loginDataStoreKey, JSON.stringify(datos));
    localStorage.setItem(this.rolDataStoreKey, rol.toString());
  }

  /**
   * Devuelve los datos del usuario guardado en localstorage, o NULL si no hay ninguno
   */
  public obtenerDatosLoginAlmacenado():LoginResponseDTO{
    return JSON.parse(localStorage.getItem(this.loginDataStoreKey))
  }

  /**
   * Devuelve true si hay un usuario logueado actualmente
   */
  isLogged(){
    let loginData:LoginResponseDTO = this.obtenerDatosLoginAlmacenado();
    if (loginData != null){
      return true;
    }else{
      return false;
    }
  }

  /**
   * Devueve true si el rol del usuario logueado es Estudiante
   */
  isEstudiante():boolean{
    let rolSeleccionado = localStorage.getItem(this.rolDataStoreKey)
    return rolSeleccionado == "estudiante";
  }
}