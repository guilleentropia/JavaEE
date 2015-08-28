package com.comics.app.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.comics.app.Controller.comicController;
import com.comics.app.Model.Comic;

/**
 * Servlet implementation class AddComic
 */
@WebServlet("/AddComic")
public class AddComic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			comicController cont = new comicController();
		
			Comic c = new Comic();
		
			c.setNameComic(request.getParameter("Name"));
			c.setCompanyComic(request.getParameter("CompanyName"));
			int Quantity = Integer.parseInt(request.getParameter("Quantity"));
			c.setQuantityComic(Quantity);
			c.setReviewComic(request.getParameter("Review"));
			cont.add(c);
			response.sendRedirect("index.jsp");
		}
		
		catch(Exception ex)
		{
			throw new ServletException(ex);
		}
		
	}

}
