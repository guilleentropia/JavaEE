package com.comics.app.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.comics.app.Controller.loanController;

import com.comics.app.Model.Loan;


/**
 * Servlet implementation class DeleteLoan
 */
@WebServlet("/DeleteLoan")
public class DeleteLoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteLoan() {
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
				
			getServletContext().getRequestDispatcher("/DeleteLoan.jsp").
			forward(request, response);
		}
		catch(Exception ex) 
		{
			throw new ServletException(ex);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try
		{
			loanController cont = new loanController();
			int borrar = Integer.parseInt(request.getParameter("Id"));
			
			cont.delete(borrar);
			
			getServletContext().getRequestDispatcher("/index.jsp").
			forward(request, response);
		}
		catch(Exception e)
		{
			throw new ServletException(e);
		}
		
	}

}
