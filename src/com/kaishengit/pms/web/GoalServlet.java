package com.kaishengit.pms.web;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kaishengit.pms.entity.EmployeeProject;
import com.kaishengit.pms.entity.Goal;
import com.kaishengit.pms.service.GoalService;
import com.kaishengit.pms.util.DateUtil;
import com.kaishengit.pms.util.PKUtil;
import com.kaishengit.pms.util.StringUtil;
import com.kaishengit.pms.util.web.Form;

public class GoalServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("m");
		if(StringUtil.isEmpty(method)) {
			list(request,response);
		} else if("new".equals(method)) {
			toCreatePage(request,response);
		} else if("create".equals(method)) {
			save(request,response);
		}
	}

	/**
	 * 保存一个新目标
	 * @param request
	 * @param response
	 */
	private void save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		EmployeeProject ep = (EmployeeProject) session.getAttribute("ep");
		
		Goal goal = (Goal) Form.bind(Goal.class, request);
		goal.setCreateTime(DateUtil.getNowDateTime());
		goal.setId(PKUtil.getId());
		goal.setProject(ep.getProject());
	
		GoalService gs = new GoalService();
		gs.save(goal);
		
		response.sendRedirect("goal.jspx");
	}

	/**
	 * 去添加目标页面
	 * @param request
	 * @param response
	 */
	private void toCreatePage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/new_goal.jsp").forward(request, response);
	}

	/**
	 * 列出当前项目中所有的目标
	 * @param request
	 * @param response
	 */
	private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		EmployeeProject ep = (EmployeeProject) session.getAttribute("ep");
		
		GoalService goalService = new GoalService();
		List<Goal> goalList = goalService.findByProjectId(ep.getProjectId());
		
		request.setAttribute("goalList", goalList);
		request.getRequestDispatcher("/WEB-INF/views/goal.jsp").forward(request, response);
	}
}
