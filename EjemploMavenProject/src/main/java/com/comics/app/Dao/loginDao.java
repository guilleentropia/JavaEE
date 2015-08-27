package com.comics.app.Dao;


import java.util.List;
import java.util.ArrayList;
import java.sql.*;


import com.comics.app.Model.Login;
import com.comics.app.Model.Rol;

public class loginDao implements genericDao<Login> {
	
	private final String SQL_INSERT = "INSERT INTO login (user, password, idRol) VALUES (?, ?, ?)";
	private final String SQL_DELETE = "DELETE FROM login WHERE idLogin = ?";
	private final String SQL_UPDATE = "UPDATE login SET user = ?, password = ?, idRol =? WHERE idLogin = ? ";
	private final String SQL_GET = "SELECT * FROM login WHERE ( idLogin = ?)";
	private final String SQL_GET_ALL = "SELECT * FROM login";
	private final String SQL_LOG = "SELECT * FROM login WHERE user = ? and password=?";
	
	private final connectionDB conn = connectionDB.getConnection();

	@Override
	public boolean add(Login c) {
		
		try {
			PreparedStatement ps;
			ps = conn.getConn().prepareStatement(SQL_INSERT);
			
			ps.setInt(1, c.getNombreRol().getIdRol());
			ps.setString(2, c.getUsuario());
			ps.setString(3, c.getPassword());
			
						
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
	public boolean update(Login c) {
			PreparedStatement ps;
		
		try {
			ps = conn.getConn().prepareStatement(SQL_UPDATE);
			ps.setString(1, c.getUsuario());
			ps.setString(2, c.getPassword());
			ps.setInt(3,  c.getNombreRol().getIdRol());
			ps.setInt(4, c.getIdLogin());
			
			
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
	public Login get(Object key) {
		Login l  = new Login();
		Rol r = new Rol();
		
		try {
			
			PreparedStatement ps;
			ResultSet res;
			
			ps = conn.getConn().prepareStatement(SQL_GET);
			ps.setInt(1, (Integer)key);
			
			res = ps.executeQuery();
			while(res.next()) {
				l.setIdLogin(res.getInt("idLogin"));
				l.setUsuario(res.getString("user"));
				l.setPassword(res.getString("password"));
				r.setIdRol(res.getInt("idRol"));
				r.setDescripcion(res.getString("descripcion"));
							  }
			
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		return l;
	}
	
	public boolean ingreso(String usuario, String password)
	{
		boolean resultado= false;
		
try {
			
			PreparedStatement ps;
			ResultSet res;
			
			ps = conn.getConn().prepareStatement(SQL_LOG);
			ps.setString(1, usuario);
			ps.setString(2, password);
			
			res = ps.executeQuery();
			resultado=res.next();
			
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		
		return resultado;
	}
	
	

	@Override
	public List<Login> getAll() {
		List<Login> list = new ArrayList<Login>();
		
		try {
			PreparedStatement ps;
			ResultSet res;
			
			ps = conn.getConn().prepareStatement(SQL_GET_ALL);
			res = ps.executeQuery();
			
			Rol r = new Rol();
			
			while(res.next()) {
				
				Login l = new Login();
				l.setIdLogin(res.getInt("idLogin"));
				l.setUsuario(res.getString("user"));
				l.setPassword(res.getString("password"));
				r.setIdRol(res.getInt("idRol"));
				r.setDescripcion(res.getString("descripcion"));
				
				
				list.add(l);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		return list;
	}

}
