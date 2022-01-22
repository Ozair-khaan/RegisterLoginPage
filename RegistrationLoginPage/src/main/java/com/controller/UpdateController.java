package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.student;
import com.dao.StudentDao;

/**
 * Servlet implementation class UpdateController
 */
@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt( request.getParameter("id"));
		System.out.println("gsgds");
		String firstName=request.getParameter("firstname");
		String middleName=request.getParameter("middlename");
		String lastName=request.getParameter("lastname");
		String email=request.getParameter("email");
		String mobileNo=request.getParameter("mobile");
		String userName=request.getParameter("username");
		String addresses=request.getParameter("address");
		String password=request.getParameter("password");
		String repassword=request.getParameter("retypepassword");
		System.out.println(firstName+ ""+middleName+ " "+lastName+" "+email+" "+mobileNo+" "+userName+" "+addresses+" "+password+" "+repassword);
		System.out.println("update hii");
		student st=new student();
		st.setId(id);
		st.setFirstname(firstName);
		st.setMiddlename(middleName);
		st.setLastname(lastName);
		st.setEmail(email);
		st.setMobileno(mobileNo);
		st.setUsername(userName);
		st.setPassword(password);
		st.setRetypepsw(repassword);
		StudentDao dao=new StudentDao();
		dao.updateValues(st);
		System.out.println("finish");
		response.sendRedirect("UpdateData.jsp");
		System.out.println("again");
	}

}
