package com.comics.app.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.comics.app.Controller.loginController;

import com.comics.app.Model.Login;

/**
 * Servlet implementation class DeleteLogin
 */
@WebServlet("/DeleteLogin")
public class DeleteLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteLogin() {
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
		
			loginController cont = new loginController();
			Login l = cont.get(id);
		
			request.setAttribute("login",l);
		
		
			getServletContext().getRequestDispatcher("/DeleteLogin.jsp").
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
		loginController cont = new loginController();
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
