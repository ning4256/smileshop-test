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
 * Servlet implementation class Login
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService us = new UserService();

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置编码格式，避免乱码现象
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		// 获得请求参数
		String loginAcc = request.getParameter("loginAcc");
		String loginPass = request.getParameter("loginPass");
		System.out.println("loginServlet.java");
		System.out.println("登录账号：" + loginAcc + "   登录密码：" + loginPass);

		// 验证账户是否存在
		LoginPO lpo = new LoginPO(loginAcc, loginPass);
		UserPO upo = us.login(lpo);
		if (upo != null) {
			
			
			
			// 将用户信息保存到session中
			HttpSession session = request.getSession();
			session.setAttribute("user", upo);

			// //测试lister
			// request.setAttribute("test", "lister生效了");
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		} else {
//			response.getWriter().print("<font color='red'>登录失败</font>");
			System.out.println("登录失败，使用重定向！");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		

		

	}

}
