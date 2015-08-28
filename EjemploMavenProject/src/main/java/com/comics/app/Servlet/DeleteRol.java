package com.comics.app.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.comics.app.Controller.rolController;

import com.comics.app.Model.Rol;

/**
 * Servlet implementation class DeleteRol
 */
@WebServlet("/DeleteRol")
public class DeleteRol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteRol() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			int id = Integer.parseInt(request.getParameter("Id"));
		
			rolController cont = new rolController();
			Rol r = cont.get(id);
		
			request.setAttribute("rol",r);
		
		
			getServletContext().getRequestDispatcher("/DeleteRol.jsp").
			forward(request, response);
		}
		catch(Exception e)
		{
			throw new ServletException(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
		rolController cont = new rolController();
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
