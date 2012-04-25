package com.kaishengit.pms.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kaishengit.pms.entity.Employee;
import com.kaishengit.pms.entity.Project;
import com.kaishengit.pms.service.ProjectService;

public class MainServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Employee em = (Employee) session.getAttribute("curr_user");
		
		//根据当前登录用户查找对应的项目
		ProjectService projectService = new ProjectService();
			List<Project> project = projectService.getEmployeeProject(em.getId());
			
			request.setAttribute("projectList", project);
		request.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(request, response);
	}

}
