package com.comics.app.Model;

public class Login {
	private int idLogin;
	private String usuario;
	private String password;
	private Rol nombreRol;
	
	
	
	public Rol getNombreRol() {
		return nombreRol;
	}
	public void setNombreRol(Rol nombreRol) {
		this.nombreRol = nombreRol;
	}
	public String getUsuario() {
		return usuario;
	}
	public int getIdLogin() {
		return idLogin;
	}
	public void setIdLogin(int idLogin) {
		this.idLogin = idLogin;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public Login()
	{
		
	}
	
	
	
	public Login(int idLogin, String usuario, String password,Rol nombreRol) {
		super();
		this.idLogin = idLogin;
		this.usuario = usuario;
		this.password = password;
		this.nombreRol = nombreRol;
	}

	
	
}
