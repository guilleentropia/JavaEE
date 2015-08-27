package com.comics.app.Controller;


import java.util.List;

import com.comics.app.Dao.loginDao;

import com.comics.app.Model.Login;
import com.comics.app.Model.Rol;

public class loginController {

	loginDao logindao = new loginDao();
	
	public boolean add(Rol r, String usuario, String Contraseña) {
		Login l = new Login();
		l.setNombreRol(r);
		l.setUsuario(usuario);
		l.setPassword(Contraseña);
		boolean rta = logindao.add(l);
		return rta;
	}
	
	public Login get(int key) {
		Login l = logindao.get(key);		
		return l;
	}
	
	public boolean ingreso(String usuario, String password){
		boolean rta = logindao.ingreso(usuario, password);
		return rta;
	}
	
	public List<Login> getAll() {
		List<Login> list = logindao.getAll();
		return list;
	}
	
	public boolean delete(int key) {
		boolean rta = logindao.delete(key);		
		return rta;
	}
	
	public boolean update(Login l) {
		boolean rta = logindao.update(l);
		return rta;
	}
}
