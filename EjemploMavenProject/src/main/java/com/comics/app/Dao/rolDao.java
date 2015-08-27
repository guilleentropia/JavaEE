package com.comics.app.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.comics.app.Model.Rol;

public class rolDao implements genericDao<Rol> {

	private final String SQL_INSERT = "INSERT INTO rol (descripcion) VALUES (?)";
	private final String SQL_DELETE = "DELETE FROM rol WHERE idRol = ?";
	private final String SQL_UPDATE = "UPDATE rol SET descripcion = ? WHERE idRol = ? ";
	private final String SQL_GET_ALL = "SELECT * FROM rol";
	private final String SQL_GET = "SELECT * FROM rol WHERE ( idRol = ?)";
	
	
	private final connectionDB conn = connectionDB.getConnection();
	
	
	@Override
	public boolean add(Rol c) {
		try {
			PreparedStatement ps;
			ps = conn.getConn().prepareStatement(SQL_INSERT);
			
			ps.setString(1, c.getDescripcion());
						
			if(ps.executeUpdate() > 0) {
				return true;
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		return false;
	}

	@Override
	public boolean update(Rol c) {
		PreparedStatement ps;
		
		try {
			ps = conn.getConn().prepareStatement(SQL_UPDATE);
			ps.setString(1, c.getDescripcion());
			ps.setInt(2, c.getIdRol());
			
			if(ps.executeUpdate() > 0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		return false;
	}

	@Override
	public boolean delete(Object key) {
		PreparedStatement ps;
		
		try {
			ps = conn.getConn().prepareStatement(SQL_DELETE);
			ps.setInt(1, (Integer)key);
			
			if(ps.executeUpdate() > 0) {
				return true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		return false;
	}

	@Override
	public Rol get(Object key) {
		Rol r = new Rol();
		
		try {
			
			PreparedStatement ps;
			ResultSet res;
			
			ps = conn.getConn().prepareStatement(SQL_GET);
			ps.setInt(1, (Integer)key);			
			res = ps.executeQuery();
			while(res.next()) {
				r.setIdRol(res.getInt("idRol"));
				r.setDescripcion(res.getString("descripcion"));
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		return r;
	}

	@Override
	public List<Rol> getAll() {
		List<Rol> list = new ArrayList<Rol>();
		
		try {
			PreparedStatement ps;
			ResultSet res;
			
			ps = conn.getConn().prepareStatement(SQL_GET_ALL);
			res = ps.executeQuery();
			
			while(res.next()) {
				
				Rol r = new Rol();
				r.setIdRol(res.getInt("idRol"));
				r.setDescripcion(res.getString("descripcion"));
				
				list.add(r);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		return list;
	}

}
