package com.kaishengit.pms.web;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kaishengit.pms.entity.Goal;
import com.kaishengit.pms.entity.Task;
import com.kaishengit.pms.service.GoalService;
import com.kaishengit.pms.service.TaskService;
import com.kaishengit.pms.util.StringUtil;

public class TaskServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String method = req.getParameter("m");
		if(StringUtil.isEmpty(method)) {
			list(req,resp);
		} else if("new".equals(method)) {
			toCreatePate(req,resp);
		}
	}

	
	/**
	 * 去添加任务页面
	 * @param req
	 * @param resp
	 */
	private void toCreatePate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/new_task.jsp").forward(req, resp);
	}

	/**
	 * 显示当前目标中所有任务
	 * @param req
	 * @param resp
	 */
	private void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String goalId = req.getParameter("goal");
		
		GoalService gs = new GoalService();
		Goal goal = gs.findById(goalId);
		if(goal == null) {
			resp.sendRedirect("goal.jspx");
			return;
		} else {
		
			TaskService ts = new TaskService();
			List<Task> list = ts.findByGoalId(goalId);
		
			req.setAttribute("goal", goal);
			req.setAttribute("taskList", list);
			req.getRequestDispatcher("/WEB-INF/views/task.jsp").forward(req, resp);
		}
	}
}
