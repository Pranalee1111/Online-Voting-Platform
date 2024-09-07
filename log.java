package com.demo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/log")
public class log extends HttpServlet {
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		
	      
	      boolean ans= EmpDAO.isValidUser(email,password);
	      
	      response.setContentType("text/html");
		PrintWriter out =response.getWriter();
	      
	      if(ans) {
	    	  HttpSession session = request.getSession();
              session.setAttribute("user", email);
              response.sendRedirect("dashboard.html");
	      }else {
	    	  out.print("<h4 style='color:red ;text-align: center;'>Wrong Credentials"
	    	  		+ "<br>Try Again!</h4>");
	    	  RequestDispatcher rd=request.getRequestDispatcher("/login.html");  
	          rd.include(request, response);  
	    	  
	      }
	     
	}

}
