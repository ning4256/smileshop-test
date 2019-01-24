package com.ning4256.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ning4256.po.LoginPO;
import com.ning4256.po.UserPO;
import com.ning4256.service.UserService;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService us = new UserService();

	// 这是注册
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置编码格式，避免乱码现象
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		// 获得请求参数
		
		String username = request.getParameter("username");
		String userphone = request.getParameter("phone");
		String loginPass = request.getParameter("loginPass");
		String comfirmPass = request.getParameter("comfirmPass");
		String userAddress = request.getParameter("userAddress");
		// 验证账户是否存在
		boolean flag = us.register(username, userphone,loginPass,comfirmPass,userAddress);
		String responseText = "";
		if (flag) {
			responseText = "注册成功";
			// 注册成功跳转到登陆页面，使用重定向方式
			response.sendRedirect("login.jsp");

		} else {
			responseText = "注册失败";
			// 注册失败跳转到注册页面，使用重定向方式
			response.sendRedirect("register.jsp");
		}

	}
}
