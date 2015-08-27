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
 * Servlet implementation class AddLogin
 */
@WebServlet("/AddLogin")
public class AddLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddLogin() {
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
			loginController cont = new loginController();
		
			Login l = new Login();
		
			l.setUsuario(request.getParameter("user"));
			l.setPassword(request.getParameter("password"));
			
			cont.add(l);
			response.sendRedirect("index.jsp");
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

}
