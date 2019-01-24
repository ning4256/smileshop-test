package com.ning4256.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;


public class Ajax extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 ObjectMapper om = new ObjectMapper(); 
       @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	   String isExist = request.getParameter("username");
    	   String warn = "";
    	   
    	   if(isExist.isEmpty()){
    		   warn = "用户名不存在";
    		   om.writeValue(response.getOutputStream(), warn);
    	   }
    	   String username = request.getParameter("username");
    	   String pass = request.getParameter("pass");
    	   String text="";
    	   if("admin".equals(username)&&"123".equals(pass)){
    		   text="登陆成功";
    	   }else{
    		   text="登录失败";
    	   }
    	   // ObjectMapper把java对象转换成json对象
    	   om.writeValue(response.getOutputStream(), text);
    
    }
	

}
