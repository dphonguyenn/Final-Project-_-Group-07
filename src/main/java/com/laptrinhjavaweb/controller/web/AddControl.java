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

@WebServlet(name = "AddControl", urlPatterns = "/add")
public class AddControl extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String image = request.getParameter("image");
		String price = request.getParameter("price");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String category = request.getParameter("category");
		HttpSession session = request.getSession();
		Account a = (Account) session.getAttribute("account");
		int sid = a.getId();

		DAO dao = new DAO();
		dao.insertProduct(name, image, price, title, description, category, sid);
		response.sendRedirect("manager");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}
}
