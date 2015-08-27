package com.comics.app.Controller;


import java.util.List;

import com.comics.app.Dao.loginDao;

import com.comics.app.Model.Login;

public class loginController {

	loginDao logindao = new loginDao();
	
	public boolean add(Login l) {
		boolean rta = logindao.add(l);
		return rta;
	}
	
	public Login get(int key) {
		Login l = logindao.get(key);		
		return l;
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
