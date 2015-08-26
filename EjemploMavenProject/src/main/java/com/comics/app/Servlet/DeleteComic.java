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
 * Servlet implementation class DeleteComic
 */
@WebServlet("/DeleteComic")
public class DeleteComic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteComic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("Id"));
		comicController cont = new comicController();
		Comic c = cont.get(id);
		
		request.setAttribute("comic",c);
		
		
		getServletContext().getRequestDispatcher("/DeleteComic.jsp").
		forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		comicController cont = new comicController();
		int borrar = Integer.parseInt(request.getParameter("Id"));
		
		cont.delete(borrar);
		
		getServletContext().getRequestDispatcher("/index.jsp").
		forward(request, response);
	}

}
