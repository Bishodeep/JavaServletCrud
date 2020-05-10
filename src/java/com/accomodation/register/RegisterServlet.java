package com.accomodation.register;

import java.io.IOException;
import java.io.PrintWriter;

import javax.naming.NameClassPair;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.accomodation.loginverification.LoginVerificationDao;
import com.accomodation.model.RegistrationModel;
import com.accomodation.registerdao.RegisterDao;

public class RegisterServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			  throws ServletException, IOException {
		  RequestDispatcher resDispatcher=request.getRequestDispatcher("Register.html");
		  resDispatcher.forward(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			  throws ServletException, IOException {
		String name=request.getParameter("studentname");
		int age= Integer.parseInt(request.getParameter("age"));
		String address=request.getParameter("address");
		int contact= Integer.parseInt(request.getParameter("contact"));
		String username= request.getParameter("username");
		String password=request.getParameter("password");
		RegistrationModel registerModel= new RegistrationModel(name,age,address,contact,username,password);
		
		if(RegisterDao.registerUser(registerModel)) {
			response.sendRedirect("");
		}else {
			
			response.sendRedirect("register");
		}
	}
}
