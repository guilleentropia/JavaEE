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
 * Servlet implementation class UpdateComic
 */
@WebServlet("/UpdateComic")
public class UpdateComic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateComic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt(request.getParameter("Id"));
		
		comicController cont = new comicController();
		Comic c = cont.get(id);
		
		request.setAttribute("comic",c);
		
		// va hacia el formulario
		getServletContext().getRequestDispatcher("/UpdateComic.jsp").
		forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
						
		
		comicController cont = new comicController();
		Comic c = new Comic();
		int Ide = Integer.parseInt(request.getParameter("Id"));
		c.setIdComic(Ide);
		c.setNameComic(request.getParameter("Name"));
		c.setCompanyComic(request.getParameter("Company"));
		int Quantity = Integer.parseInt(request.getParameter("Quantity"));
		c.setQuantityComic(Quantity);
		c.setReviewComic(request.getParameter("Review"));
		cont.update(c);
		
		getServletContext().getRequestDispatcher("/index.jsp").
		forward(request, response);
	}

}
