package com.comics.app.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.comics.app.Controller.comicController;
import com.comics.app.Model.Comic;
import com.comics.app.Model.Loan;
import com.comics.app.Model.Person;

public class loanDao implements genericDao<Loan> {

	private final String SQL_INSERT = "INSERT INTO loans (Persons_idPerson, Comics_idComic, date) VALUES (?, ?, ?)";
	private final String SQL_GET_ALL = "select idLoan,c.idComic, c.nameComic,p.idPerson, p.namePerson, l.date from  loans l join comics c on l.Comics_idComic = c.idComic join persons p on l.Persons_idPerson = p.idPerson ";
	private final String SQL_DELETE = "DELETE FROM loans WHERE idLoan = ?";
	private final String SQL_GET = "SELECT * FROM loans l  join comics c on l.Comics_idComic = c.idComic join persons p on l.Persons_idPerson = p.idPerson WHERE  idLoan = ?";
	private final String SQL_UPDATE = "UPDATE loans l SET l.date = ? WHERE idLoan = ?";
	
	private final connectionDB conn = connectionDB.getConnection();
	
	public boolean add(Loan c) {
		try {
			PreparedStatement ps;
			ps = conn.getConn().prepareStatement(SQL_INSERT);
			
			ps.setInt(1, c.getPerson().getIdPerson());
			ps.setInt(2, c.getComic().getIdComic());
			ps.setString(3, c.getDate());

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

	public boolean update(Loan c) {
		
		try {
			PreparedStatement ps;
			ps = conn.getConn().prepareStatement(SQL_UPDATE);
			ps.setString(1, c.getDate());
			ps.setInt(2,  c.getIdLoan());
			

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

	public Loan get(Object key) {
		Loan l = new Loan();
		Person p = new Person();
		Comic c = new Comic();
		
		try {
			
			PreparedStatement ps;
			ResultSet res;
			
			ps = conn.getConn().prepareStatement(SQL_GET);
			ps.setInt(1, (Integer)key);
			
			res = ps.executeQuery();
			while(res.next()) {
				
				l.setIdLoan(res.getInt("idLoan"));
				l.setDate(res.getString("date"));
				c.setIdComic(res.getInt("Comics_idComic"));
				c.setNameComic(res.getString("c.nameComic"));
				c.setCompanyComic(res.getString("c.companyComic"));
				c.setQuantityComic(res.getInt("c.quantityComic"));
			 	c.setReviewComic(res.getString("c.reviewComic"));
			 	l.setComic(c);
			 	p.setNamePerson(res.getString("p.namePerson"));
			 	p.setTelephonePerson(res.getString("p.telephonePerson"));
			 	l.setPerson(p);
				
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}
		return l;
	}

	public List<Loan> getAll() {
		List<Loan> list = new ArrayList<Loan>();
		
		try {
			PreparedStatement ps;
			ResultSet res;
			
			ps = conn.getConn().prepareStatement(SQL_GET_ALL);
			res = ps.executeQuery();
			 
			    comicController comcont = new comicController();
			
			
			while(res.next()) {
				
				Comic c = new Comic();
				Person p = new Person();
				Loan l = new Loan();
				
				l.setIdLoan(res.getInt("idLoan"));
								
				c= comcont.get(res.getInt("idComic"));
				l.setComic(c);
				
				p.setNamePerson(res.getString("namePerson"));
				l.setPerson(p);
				

				l.setDate(res.getString("date"));
				
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