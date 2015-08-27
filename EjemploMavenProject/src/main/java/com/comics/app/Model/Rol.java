package com.comics.app.Model;

public class Rol {

	int idRol;
	String Descripcion;
	
	
	
	
	public int getIdRol() {
		return idRol;
	}
	public void setIdRol(int idRol) {
		this.idRol = idRol;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	
	public Rol(){
		
	}
	
	public Rol(int idRol, String descripcion) {
		super();
		this.idRol = idRol;
		Descripcion = descripcion;
	}
	
	
}
