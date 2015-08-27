package com.comics.app.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.comics.app.Controller.loginController;

import com.comics.app.Controller.rolController;

import com.comics.app.Model.Login;

import com.comics.app.Model.Rol;

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
		
		try{
			rolController cont = new rolController();
		
			List<Rol> lista = new ArrayList<Rol>();
			lista = cont.getAll();
			request.setAttribute("lista", lista);
		
							
			RequestDispatcher rd = request.getRequestDispatcher("AddLogin.jsp");  
			rd.forward(request, response);  
		  }
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			loginController cont = new loginController();
		
			Login l = new Login();
			Rol r = new Rol();
		
			l.setUsuario(request.getParameter("user"));
			l.setPassword(request.getParameter("password"));
			int Iderol = Integer.parseInt(request.getParameter("rol"));
			r.setIdRol(Iderol);
			l.setNombreRol(r);
			String usuario=l.getUsuario();
		    String password=l.getPassword();
			
			cont.add(usuario, password,r);
			response.sendRedirect("index.jsp");
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

}
