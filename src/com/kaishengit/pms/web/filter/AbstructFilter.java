package com.kaishengit.pms.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public abstract class AbstructFilter implements Filter{

	public void destroy() {
		
	}

	public abstract void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException ;

	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

}
