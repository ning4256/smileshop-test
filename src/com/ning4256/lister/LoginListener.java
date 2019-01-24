package com.ning4256.lister;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class LoginFilter
 *
 */
public class LoginListener implements  ServletContextListener,HttpSessionListener {
    public void contextDestroyed(ServletContextEvent sce)  { 
    }

    public void contextInitialized(ServletContextEvent sce)  { 
//		设置初始值
		int count = 0;
		sce.getServletContext().setAttribute("onLineCount", count);
    }

	
    public void sessionCreated(HttpSessionEvent se)  { 
		synchronized (this.getClass()) {
			ServletContext context = se.getSession().getServletContext();
			Integer onLineCount = (Integer) context.getAttribute("onLineCount");
			
			if (onLineCount == null) {
				context.setAttribute("onLineCount", 1);
			} else {
				onLineCount++;
				context.setAttribute("onLineCount", onLineCount);
			}
//			System.out.println("onLineCount------" + onLineCount);
		}
    }


    public void sessionDestroyed(HttpSessionEvent se)  { 
		synchronized (ServletContextListener.class) {
			ServletContext context = se.getSession().getServletContext();
			Integer onLineCount = (Integer) context.getAttribute("onLineCount");
			if (onLineCount == null) {
				context.setAttribute("onLineCount", 1);
			} else {
				onLineCount--;
				context.setAttribute("onLineCount", onLineCount);
			}
		}
    }



	
}
