package com.ning4256.service;

import java.util.HashMap;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ning4256.po.CartPO;
import com.sun.javafx.collections.MappingChange.Map;

public class CartService {

	public String updateCart(String pid, String name, String img, String pcount, String pprice, HashMap<String, CartPO> cart) {
		String result = "修改失败";
		//(数据有效性判断)
		if(name == null || img == null) {
			return result;
		}
		//类型转换
		int id;
		int count;
		int price;
		try {
			id = Integer.parseInt(pid);
			count = Integer.parseInt(pcount);
			price = Integer.parseInt(pprice);
		} catch (Exception e) {
			return result;
		}
		//业务逻辑判断
		//判断操作类型(新增还是修改)
		
		CartPO po = cart.get(pid);
		if(po == null) {
			po = new CartPO(id, name, img, count, price);
			cart.put(pid,po);
		} else {
			if(count > 0) {
				po.setCount(po.getCount() + count); 
				result = "修改成功";
			}
		}

		
		return result;
	}

}


