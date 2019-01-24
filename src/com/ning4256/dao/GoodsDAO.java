package com.ning4256.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.ning4256.po.GoodsPO;

public class GoodsDAO {

	//根据页码查找商品信息
	public List<GoodsPO> findAllByIndex(Connection con, int index) {
		// TODO Auto-generated method stub
		List<GoodsPO> list = null;
		//准备SQL
		//SELECT id,`name`,price,number,img,description,goodsType FROM goods Where flag = 0 LIMIT ?,10;
		String sql = "SELECT * FROM gooodsInfo LIMIT ?,10";
		PreparedStatement ps = null;
		ResultSet res = null;
		GoodsPO gPo = new GoodsPO();
		try {
			ps = con.prepareStatement(sql);
			//设置参数
			ps.setInt(1, index);
			//执行sql
			res = ps.executeQuery();
			//处理结果
			while(res.next()) {
				//循环一次取出一条数据
				int id = res.getInt("id");
				String name= res.getString("name");
				double price = res.getInt("price");
				int num = res.getInt("number");
				String img = res.getString("img");
				String des = res.getString("description");
				int goodsType = res.getInt("goodsTypeId");
				gPo = new GoodsPO(id, name, price, num, img, des, goodsType);
				//向数据保存到list中
				list.add(gPo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	

}
