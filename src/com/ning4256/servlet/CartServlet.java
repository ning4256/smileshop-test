package com.ning4256.servlet;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ning4256.po.CartPO;
import com.ning4256.service.CartService;
import com.sun.javafx.collections.MappingChange.Map;

/**
 * Servlet implementation class CartServlet
 */
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//获取页面参数
		String operType = req.getParameter("operType");
		if(operType == null) {
			return;
		}
		//从session中取出购物车Map
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("cart");
		HashMap<String, CartPO> cart = null;
		Object result = null;
		if(obj == null) {
			//该session第一次访问购物车
			cart = new HashMap<String, CartPO>();
			session.setAttribute("cart", cart);
		}else {
			cart = (HashMap<String, CartPO>) obj;
		}
		
		if(operType.equals("search")) {
			//查询操作
			result = search(req,cart);
			
			
			
		}else if (operType.equals("update")) {
			//修改操作
			 result= updateCart(req,cart);
			
		}else if (operType.equals("delete")) {
			//删除操作
		}
		ObjectMapper om = new ObjectMapper();
		om.writeValue(resp.getOutputStream(), result);

	
	
	}
	//查询购物车数据
	private Collection<CartPO> search(HttpServletRequest req, HashMap<String, CartPO> cart) {
		Collection<CartPO> carts = cart.values();
		
		
		return carts;
	}
	//购物车修改操作
	private String updateCart(HttpServletRequest req, HashMap<String, CartPO> cart) {
		//获取页面传参
		String result = "修改失败";
		
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String img = req.getParameter("img");
		String count = req.getParameter("count");
		String price = req.getParameter("price");
		
		CartService cartService = new CartService();
		result = cartService.updateCart(id, name,img, count,price, cart);
		return result;
	}
	//查询购物车数量
	private name() {
		
	}



}
