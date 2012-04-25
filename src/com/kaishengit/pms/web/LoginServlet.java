package com.kaishengit.pms.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kaishengit.pms.entity.Employee;
import com.kaishengit.pms.service.EmployeeService;
import com.kaishengit.pms.util.web.Form;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Employee employee = (Employee) Form.bind(Employee.class,request);
		
		EmployeeService es = new EmployeeService();
		Employee loginEmployee = es.login(employee);
		
		if(loginEmployee == null) {
			//µÇÂ¼Ê§°Ü
			response.sendRedirect("index.jspx?state=10001");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("curr_user", loginEmployee);
			
			response.sendRedirect("main.jspx");
		}
		
		
	}

}
