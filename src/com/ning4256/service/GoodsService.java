package com.ning4256.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.ning4256.dao.GoodsDAO;
import com.ning4256.po.GoodsPO;
import com.ning4256.utils.C3P0Util;

public class GoodsService {

	public static int GoodsNum = 10;
	//分页查询商品信息 按每页10条数据
	public List<GoodsPO> showGoods(String spage) {
		List<GoodsPO> goods = null;
		//检查数据的有效性
		int page = 0;
		try {
			page = Integer.parseInt(spage);
		} catch (Exception e) {
			return new ArrayList<GoodsPO>();
		}
		//根据页码查询商品
		int index = (page - 1) * 10;
		//创建DAO对象
		GoodsDAO goodsDAO = new GoodsDAO();
		//获取数据库连接对象
		Connection con = C3P0Util.getConnection();
		
		goods = goodsDAO.findAllByIndex(con, index);
		
		C3P0Util.close(con);
		return goods;
	}

}
