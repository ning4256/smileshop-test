package com.ning4256.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ning4256.po.UserPO;

public class UserLoginPrivilegeFilter implements Filter {


	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		
		//校验用户是否登录----校验session是否存在user对象
		HttpSession session = req.getSession();

		//判断用户是否已经登录 未登录下面代码不执行
		UserPO user = (UserPO) session.getAttribute("user");
		if(user==null){
			//没有登录
			resp.sendRedirect("login.jsp");
			return;
		}
		
		chain.doFilter(req, resp);
	}


	public void init(FilterConfig fConfig) throws ServletException {
	}

}
