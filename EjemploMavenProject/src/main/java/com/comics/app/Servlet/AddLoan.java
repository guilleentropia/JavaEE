package com.comics.app.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.comics.app.Controller.comicController;
import com.comics.app.Controller.loanController;
import com.comics.app.Controller.personController;
import com.comics.app.Model.Comic;
import com.comics.app.Model.Loan;
import com.comics.app.Model.Person;

/**
 * Servlet implementation class AddLoan
 */
@WebServlet("/AddLoan")
public class AddLoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddLoan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try{
			comicController cont = new comicController();
		
			List<Comic> lista = new ArrayList<Comic>();
			lista = cont.getAll();
			request.setAttribute("lista", lista);
		
		
			personController pers = new personController();
			List<Person> listaper = new ArrayList<Person>();
			listaper = pers.getAll();
			request.setAttribute("listaper", listaper);
		
			RequestDispatcher rd = request.getRequestDispatcher("AddLoan.jsp");  
			rd.forward(request, response);  
		  }
		catch (Exception e) 
		{
			throw new ServletException(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		loanController cont = new loanController();
		comicController camic = new comicController();
		Loan l = new Loan();
		Comic c = new Comic();
		Person p = new Person();
		int Ide = Integer.parseInt(request.getParameter("comic"));
		c.setIdComic(Ide);
		Comic d = new Comic();
		d= camic.get(Ide);
		int cantidad = d.getQuantityComic();
		d.setQuantityComic(cantidad-1);
		camic.update(d);
		l.setComic(c);
		int Ideper = Integer.parseInt(request.getParameter("person"));
		p.setIdPerson(Ideper);
		l.setPerson(p);
		l.setDate(request.getParameter("fecha"));
		String fecha = l.getDate();
		
		cont.addLoan(c, p, fecha);
		
		
		response.sendRedirect("index.jsp");
	}

}
