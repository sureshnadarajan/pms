package com.kaishengit.pms.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyprojectServlet extends HttpServlet {

private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.getRequestDispatcher("/WEB-INF/views/new_project.jsp").forward(request, response);
		
	}

}
