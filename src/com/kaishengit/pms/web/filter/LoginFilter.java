package com.kaishengit.pms.web.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kaishengit.pms.entity.Employee;

public class LoginFilter extends AbstructFilter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		
		
		//获取的用户请求的路径
		String uri = request.getRequestURI();
		uri = uri.substring(uri.lastIndexOf("/")+1);

		if("".equals(uri) || "index.jsp".equals(uri) || "login.jspx".equals(uri)) {
			chain.doFilter(request, response);
		} else {
			HttpSession session = request.getSession();
			
			Employee user = (Employee) session.getAttribute("session_user");
			
			if(user == null) {
				response.sendRedirect("index.jsp");
			} else {
				chain.doFilter(request, response);
			}
		}
		
		
	}

}
