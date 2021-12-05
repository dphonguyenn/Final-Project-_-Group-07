package com.laptrinhjavaweb.controller.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavaweb.dao.DAO;

@WebServlet(name = "DeleteControl", urlPatterns = "/delete")
public class DeleteControl extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = -2903453347320898616L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pid = request.getParameter("pid");

		DAO dao = new DAO();
		dao.deleteProduct(pid);
		response.sendRedirect("manager");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}
}
