package com.laptrinhjavaweb.controller.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.laptrinhjavaweb.dao.DAO;
import com.laptrinhjavaweb.entity.Account;

@WebServlet(name = "LoginControl", urlPatterns = "/login")
public class LoginControl extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5080765871509740649L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		DAO dao = new DAO();
		Account a = dao.login(username, password);
		if (a == null) {
			request.setAttribute("message", "Login unsuccessful. Please try again or log in another way! ");
			request.getRequestDispatcher("/views/login.jsp").forward(request, response);
		} else {
			HttpSession session  = request.getSession();
			session.setAttribute("account", a);
			response.sendRedirect("Home");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}
}