package com.ning4256.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ning4256.po.GoodsPO;
import com.ning4256.service.GoodsService;

/**
 * Servlet implementation class GoodsServlet
 */
public class GoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operType = request.getParameter("operType");
		if(operType == null) {
			return;
		}
		Object result = null;
		if(operType.equals("showGoods")) {
			//分页查询商品数据
			//获取页码
			String page = request.getParameter("page");
			//调用service进行逻辑处理
			GoodsService gs = new GoodsService();
			List<GoodsPO> goods = gs.showGoods(page);
			//获得商品总页码
			int totalPage = gs.findTotalPage();
			
			
			result = gs.showGoods(page);
			
			
		}
		//将处理结果响应给客户端
		ObjectMapper om = new ObjectMapper();
		om.writeValue(response.getOutputStream(), result);
	}

}
