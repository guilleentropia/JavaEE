package com.comics.app.Servlet;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.comics.app.Controller.loginController;
import com.comics.app.Model.Login;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/LoginServ")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter(); 
		try{
			loginController cont = new loginController();
		
			Login logueo = new Login();
			
			logueo.setUsuario(request.getParameter("user"));
			logueo.setPassword(request.getParameter("password"));
			
			if(cont.ingreso(logueo.getUsuario(), logueo.getPassword())==true)
			{
				response.sendRedirect("index.jsp");
			}
			else
			{
				out.println("Los datos ingresados no son correctos");
				getServletContext().getRequestDispatcher("/Login.jsp").
				forward(request, response);
				
			}
			

			
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

}
