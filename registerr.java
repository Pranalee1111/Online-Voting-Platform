package com.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/registerr")
public class registerr extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String state=request.getParameter("state");
		String country=request.getParameter("country");
		
		
		
		Person e= new Person();
	      e.setName(name);

	      e.setEmail(email);
	      e.setPassword(password);
	      e.setState(state);
	      e.setCountry(country);
	      
	      int ans= EmpDAO.register(e);
	      
	      if(ans>0) {
	    	 
	    	  request.getRequestDispatcher("login.html").include(request, response);
	      }
	      else {
	    	  out.print("Something went wrong..");
	      }
		
		
	}

}
