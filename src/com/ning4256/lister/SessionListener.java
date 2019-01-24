package com.ning4256.lister;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.ning4256.dao.cartDAO;
import com.ning4256.po.CartPO;
import com.ning4256.utils.C3P0Util;

/**
 * Application Lifecycle Listener implementation class SessionListener
 *
 */
public class SessionListener implements HttpSessionListener {



    public void sessionCreated(HttpSessionEvent arg0)  { 
         // TODO Auto-generated method stub
    }


    public void sessionDestroyed(HttpSessionEvent se)  { 
    	//从session中取出map，遍历其中所有的实体对象
    	HttpSession session = se.getSession();
    	Object obj = session.getAttribute("cart");
    	//取出用户id
    	Object ologinId = session.getAttribute("loginId");
    	
    	if(obj != null && ologinId != null) {
    		Map<String, CartPO> cart = (Map<String, CartPO>) obj;
    		int loginId = (int) ologinId;
    		Collection<CartPO> carts = cart.values();
    		//获取数据库连接对象
    		Connection con = C3P0Util.getConnection();
    		try {
				con.setAutoCommit(false);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		Boolean flag = false;
    		cartDAO cartDAO = new cartDAO();
    		for(CartPO po: carts) {
    			
    			flag =  cartDAO.insert(loginId,po.getCount(),po.getId(),con);
    		
    		
    		}
    		C3P0Util.close(con);
    	
    	}
    
    }
	
}
