package com.employee;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class viewEmployeesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		List<employee> allemployees = employeeDBUtil.getAllEmployees();
		request.setAttribute("allemployees", allemployees);
		RequestDispatcher dis = request.getRequestDispatcher("viewEmployees.jsp");
		dis.forward(request, response);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
