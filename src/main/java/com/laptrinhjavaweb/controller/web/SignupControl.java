package com.laptrinhjavaweb.controller.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavaweb.dao.DAO;
import com.laptrinhjavaweb.entity.Account;

@WebServlet(name = "SignupControl", urlPatterns = "/signup")
public class SignupControl extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1650914706071357454L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String re_pass = request.getParameter("repass");
		if (!pass.equals(re_pass)) {
			request.getRequestDispatcher("/views/login.jsp").forward(request, response);
		} else {
			DAO dao = new DAO();
			Account a = dao.checkAccountExits(user);
			if (a == null) {
				dao.signup(user, re_pass);
				response.sendRedirect("Home");
			} else {
				request.getRequestDispatcher("/views/login.jsp").forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}
}
