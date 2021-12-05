package com.laptrinhjavaweb.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.laptrinhjavaweb.dao.DAO;
import com.laptrinhjavaweb.entity.Account;
import com.laptrinhjavaweb.entity.Category;
import com.laptrinhjavaweb.entity.Product;

@WebServlet(name = "ManagerControl", urlPatterns = "/manager")
public class ManagerControl extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = -2201677081530947319L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Account a = (Account) session.getAttribute("account");
		int id = a.getId();
		DAO dao = new DAO();
		List<Product> list = dao.getProductBySellID(id);
		List<Category> listC = dao.getAllCategory();

		request.setAttribute("listP", list);
		request.setAttribute("listCC", listC);
		request.getRequestDispatcher("/views/manager.jsp").forward(request, response);

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

}
