package com.powernode.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class UserFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
			
		HttpServletRequest request=(HttpServletRequest) req;
		HttpServletResponse response=(HttpServletResponse) resp;
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		String path = request.getServletPath();
		
		
		if ("/logIn.do".equals(path)  || "/index.jsp".equals(path) || "/logIn.html".equals(path)) {
			chain.doFilter(req, resp);
		} else {
			
			HttpSession session = request.getSession(false);
				if (session!=null && session.getAttribute("username") !=null) {
					chain.doFilter(req, resp);
				}else {
					response.sendRedirect(request.getContextPath()+"/index.jsp");
				}
		}
		
			
	}

}
