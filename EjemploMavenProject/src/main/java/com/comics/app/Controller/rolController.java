package com.comics.app.Controller;

import java.util.List;


import com.comics.app.Dao.rolDao;
import com.comics.app.Model.Rol;


public class rolController {

	rolDao roldao = new rolDao();
	
	public boolean add(Rol r) {
		boolean rta = roldao.add(r);
		return rta;
	}
	
	public Rol get(int key) {
		Rol r = roldao.get(key);		
		return r;
	}
	
	public List<Rol> getAll() {
		List<Rol> list = roldao.getAll();
		return list;
	}
	
	public boolean delete(int key) {
		boolean rta = roldao.delete(key);		
		return rta;
	}
	
	public boolean update(Rol r) {
		boolean rta = roldao.update(r);
		return rta;
	}
}
