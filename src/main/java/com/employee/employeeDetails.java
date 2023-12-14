package com.employee;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class employeeDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		
		employee empDetail = employeeDBUtil.getEmployeeDetails(username);
		request.setAttribute("empDetail", empDetail);
		RequestDispatcher dis = request.getRequestDispatcher("updatedEmp.jsp");
		dis.forward(request, response);System.out.println("Details");
		
	}

}
