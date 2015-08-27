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
 * Servlet implementation class UpdateLogin
 */
@WebServlet("/UpdateLogin")
public class UpdateLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateLogin() {
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
			
			
			getServletContext().getRequestDispatcher("/UpdateLogin.jsp").
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
			loginController cont = new loginController();
			Login l = new Login();
			int Ide = Integer.parseInt(request.getParameter("Id"));
			l.setIdLogin(Ide);
			l.setUsuario(request.getParameter("user"));
			l.setPassword(request.getParameter("password"));
			
			cont.update(l);
			
			getServletContext().getRequestDispatcher("/index.jsp").
			forward(request, response);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

}
