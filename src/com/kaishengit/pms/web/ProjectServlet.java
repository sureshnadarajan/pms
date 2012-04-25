package com.kaishengit.pms.web;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kaishengit.pms.entity.Employee;
import com.kaishengit.pms.entity.EmployeeProject;
import com.kaishengit.pms.service.ProjectService;
import com.kaishengit.pms.util.StringUtil;

public class ProjectServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Employee employee = (Employee) session.getAttribute("curr_user");
		
		String id = request.getParameter("id");
		if(StringUtil.isNotEmpty(id)) {
		
			ProjectService projectService = new ProjectService();
			EmployeeProject ep = projectService.findById(id,employee.getId());
			
			if(ep == null) {
				response.sendError(404);
				return;
			}
			//设置当前用户在当前项目中的权限
			session.setAttribute("role", ep.getRole());
			
			session.setAttribute("ep", ep);
			request.getRequestDispatcher("/WEB-INF/views/project.jsp").forward(request, response);
		} else {
			response.sendError(404);
		}
	}

}
