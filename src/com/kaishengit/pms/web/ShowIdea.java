package com.kaishengit.pms.web;


import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kaishengit.pms.entity.Employee;
import com.kaishengit.pms.entity.EmployeeProject;
import com.kaishengit.pms.entity.Idea;
import com.kaishengit.pms.entity.IdeaComment;

import com.kaishengit.pms.service.IdeaCommentService;
import com.kaishengit.pms.service.IdeaService;
import com.kaishengit.pms.util.DateUtil;

public class ShowIdea extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String m=request.getParameter("m");
		String state=request.getParameter("state");
		
		HttpSession session=request.getSession();
		Employee em=(Employee) session.getAttribute("curr_user");
		EmployeeProject ep=(EmployeeProject) session.getAttribute("ep");
		UUID uu=UUID.randomUUID();
		
		
				if(m==null){
					if(em==null||ep==null){
						response.sendError(404);
					}else{
						List<Idea> list=findAllIdea(ep.getProject().getId());
						session.setAttribute("idealist", list);
					}
					request.getRequestDispatcher("WEB-INF/views/idea.jsp").forward(request, response);
				}else if("new".equals(m)){
				request.setAttribute("state", state);
				request.getRequestDispatcher("WEB-INF/views/new_idea.jsp").forward(request, response);
			}else if("newone".equals(m)){
				String title=request.getParameter("title");
				String content=request.getParameter("content");
				String employeeid=em.getId();
				String projectid=ep.getProject().getId();
				String createtime=DateUtil.getNowDateTime();
				
				String id=uu.toString();
				Idea idea=new Idea();
				idea.setContent(content);
				idea.setCreatetime(createtime);
				idea.setEmployeeid(employeeid);
				idea.setId(id);
				idea.setProjectid(projectid);
				idea.setTitle(title);
				int rows=save(idea);
				/**
				 * 如果>0成功
				 */
				if(rows>0){
					response.sendRedirect("showidea.jspx?m=new&state=1");
				}else{
					response.sendRedirect("showidea.jspx?m=new&state=-1");
				}
			}else if("show".equals(m)){
				String id=request.getParameter("id");
				Idea idea=new Idea();
				idea=finIdea(id);
				List<IdeaComment> list=findidea(id);
				session.setAttribute("idea", idea);
				session.setAttribute("ideacomments", list);
				response.sendRedirect("showidea.jspx?m=ideacomment");
			}else if("ideacomment".equals(m)){
				request.setAttribute("state", state);
				request.getRequestDispatcher("/WEB-INF/views/show_idea.jsp").forward(request, response);
			}else if("comment".equals(m)){
				String content=request.getParameter("content"); 
				Idea idea=(Idea) session.getAttribute("idea");
				String ideaid=idea.getId();
				String employeeid=em.getId();
				String createtime=DateUtil.getNowDateTime();
				String id=uu.toString();
				IdeaComment ic=new IdeaComment();
				ic.setContent(content);
				ic.setCreatetime(createtime);
				ic.setEmployeeid(employeeid);
				ic.setId(id);
				ic.setIdeaid(ideaid);
				int row =saveIC(ic);
				if(row>0){
					response.sendRedirect("showidea.jspx?m=ideacomment&state=1&id="+ideaid);
				}else{
					response.sendRedirect("showidea.jspx?m=ideacomment&state=-1&id="+ideaid);
				}
			}
		}
	private int saveIC(IdeaComment ic) {
		int rows=isc.saveIC(ic);
		return rows;
	}
	private Idea finIdea(String id) {
		Idea idea=is.findIdea(id);
		return idea;
	}
	IdeaCommentService isc=new IdeaCommentService();
	private List<IdeaComment> findidea(String id) {
		List<IdeaComment> list=isc.findAllComment(id);
		return list;
	}
	private int save(Idea idea) {
		int rows=is.save(idea);
		return rows;
	}
	IdeaService is=new IdeaService();
		
	private List<Idea> findAllIdea(String id2) {
		List<Idea> list=is.findAllIdea(id2);
		return list;
	}

}
