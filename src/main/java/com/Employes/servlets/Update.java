package com.Employes.servlets;

import java.io.IOException;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		request.setAttribute("emps", Afficher.Array.stream().filter(emps -> emps.getId().equals(id)).collect(Collectors.toList()).get(0));
		this.getServletContext().getRequestDispatcher("/WEB-INF/update.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String id = request.getParameter("id");
		    String name = request.getParameter("name");
		    String email = request.getParameter("email");
		    String phoneNumber = request.getParameter("phone");
		    String department = request.getParameter("departement");
		    String job = request.getParameter("post");
		    
		    for (Employee emps : Afficher.Array){
		    	if(emps.getId().equals(id)) {
		    		if(!name.isEmpty()) {
		    			emps.setName(name);
		    		}
		    		if(!email.isEmpty()) {
		    			emps.setEmail(email);
		    		}
		    		if(!phoneNumber.isEmpty()) {
		    			emps.setPhone(phoneNumber);	
		    		}
		    		if(!department.isEmpty()) {
		    			emps.setDepartement(department);
		    		}
		    		if(!job.isEmpty()) {
		    			emps.setPost(job);	
		    		}
		    	}
		    }
			request.setAttribute("emps", Afficher.Array);
			this.getServletContext().getRequestDispatcher("/WEB-INF/afficher.jsp").forward(request, response);

	}

}
