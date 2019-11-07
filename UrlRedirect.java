package com.user;

//import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UrlRedirect
 */
@WebServlet("/UrlRedirect")
public class UrlRedirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	  public void sendSMS(HttpServletRequest request, HttpServletResponse response)throws ServletException, java.io.IOException {
		    String contextPath= "http://www.java2s.com";
		    response.sendRedirect(response.encodeRedirectURL(contextPath + "/maps"));
		    
		    }
		  public void doGet(HttpServletRequest request, HttpServletResponse response)
		      throws ServletException, java.io.IOException {
		        String contextPath= "http://www.java2s.com";
		    response.sendRedirect(response.encodeRedirectURL(contextPath + "/maps"));
		  }
		}
