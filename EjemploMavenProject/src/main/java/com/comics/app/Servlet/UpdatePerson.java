package com.comics.app.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.comics.app.Controller.personController;

import com.comics.app.Model.Person;

/**
 * Servlet implementation class UpdatePerson
 */
@WebServlet("/UpdatePerson")
public class UpdatePerson extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePerson() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("Id"));
		
		personController cont = new personController();
		Person p = cont.get(id);
		
		request.setAttribute("person",p);
		
		// va hacia el formulario
		getServletContext().getRequestDispatcher("/UpdatePerson.jsp").
		forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		personController cont = new personController();
		Person p = new Person();
		int Ide = Integer.parseInt(request.getParameter("Id"));
		p.setIdPerson(Ide);
		p.setNamePerson(request.getParameter("Name"));
		p.setTelephonePerson(request.getParameter("Telephone"));
		cont.update(p);
		
		getServletContext().getRequestDispatcher("/index.jsp").
		forward(request, response);
	}

}
