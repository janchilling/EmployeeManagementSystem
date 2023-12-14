package com.employee;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class deleteEmployee
 */
public class deleteEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		boolean istrue;
		
		istrue = employeeDBUtil.deleteEmployee(id);
		
		if(istrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("viewEmployees.jsp");
			dis.forward(request, response);
		}
		else{
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
