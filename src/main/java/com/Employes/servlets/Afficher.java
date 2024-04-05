package com.Employes.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Afficher")
public class Afficher extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Employee> Array = new ArrayList<Employee>();

    public Afficher() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Array.removeIf(emp -> emp.getId().equals(id));
        request.setAttribute("emps", Array);
        this.getServletContext().getRequestDispatcher("/WEB-INF/afficher.jsp").forward(request, response);
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String id =request.getParameter("id");
		if(Array.stream().anyMatch(emp -> emp.getId().equals(id))) {
			request.setAttribute("isAbleToAdd",".");
			request.setAttribute("emps",Array);
			this.getServletContext().getRequestDispatcher("/WEB-INF/afficher.jsp").forward(request, response);
			
		}else {	
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String departement = request.getParameter("departement");
		String post = request.getParameter("post");
		
		Array.add(new Employee(id,name, email , phone, departement, post));
		request.setAttribute("emps",Array);
	
		this.getServletContext().getRequestDispatcher("/WEB-INF/afficher.jsp").forward(request, response);
		}
	}
	
	

		
		
		
}
