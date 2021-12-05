package com.laptrinhjavaweb.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavaweb.dao.DAO;
import com.laptrinhjavaweb.entity.Category;
import com.laptrinhjavaweb.entity.Product;

@WebServlet(name = "SearchControl", urlPatterns = "/search")
public class SearchControl extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4087475076908829266L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String txtSearch = request.getParameter("txt");
		DAO dao = new DAO();
		List<Product> list = dao.searchtByName(txtSearch);
		List<Category> listC = dao.getAllCategory();
		Product last = dao.getLastProduct();

		request.setAttribute("p", last);
		request.setAttribute("listCC", listC);

		request.setAttribute("listP", list);
		request.getRequestDispatcher("/decorators/home.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

}
