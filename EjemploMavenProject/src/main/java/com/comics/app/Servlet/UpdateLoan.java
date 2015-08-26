package com.comics.app.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.comics.app.Controller.loanController;
import com.comics.app.Model.Comic;
import com.comics.app.Model.Loan;
import com.comics.app.Model.Person;

/**
 * Servlet implementation class UpdateLoan
 */
@WebServlet("/UpdateLoan")
public class UpdateLoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateLoan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			int id = Integer.parseInt(request.getParameter("Id"));
		
			loanController cont = new loanController();
			Loan l = cont.get(id);
				
			request.setAttribute("loan",l);
			request.setAttribute("person",l.getPerson());
			request.setAttribute("comic", l.getComic());
				
			getServletContext().getRequestDispatcher("/UpdateLoan.jsp").
			forward(request, response);
		}
		catch(Exception ex) 
		{
		  ex.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			loanController cont = new loanController();
			Loan l = new Loan();
			int prestamo = Integer.parseInt(request.getParameter("Id"));
			l.setIdLoan(prestamo);
			Person p = l.getPerson();
			Comic c= l.getComic();
			l.setPerson(p);
			l.setComic(c);
			cont.update(l);
			
			
			getServletContext().getRequestDispatcher("/index.jsp").
			forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
