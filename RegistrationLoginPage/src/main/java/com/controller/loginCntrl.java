package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.student;
import com.dao.StudentDao;

/**
 * Servlet implementation class loginCntrl
 */
@WebServlet("/loginCntrl")
public class loginCntrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginCntrl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			System.out.println(username);
			System.out.println(password);

			System.out.println(username + "" + password);
			student st = new student();
			st.setUsername(username);
			st.setPassword(password);

			System.err.println(st);
			
			StudentDao dao = new StudentDao();
			boolean status = dao.validateStudent(st);
			
			student st2 = dao.getValues(st);
			HttpSession session = request.getSession();
			session.setAttribute("uname", st2);
			System.out.println("hiii" + st2);
			System.out.println();
			if (status == true) {
				RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
