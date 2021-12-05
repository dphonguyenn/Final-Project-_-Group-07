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

@WebServlet(name = "DetailControl", urlPatterns = "/detail")
public class DetailControl extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -76386883957766515L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("pid");

		DAO dao = new DAO();
		Product p = dao.getProductByID(id);
		List<Category> listC = dao.getAllCategory();
		Product last = dao.getLastProduct();

		request.setAttribute("p", last);
		request.setAttribute("listCC", listC);

		request.setAttribute("detail", p);
		request.getRequestDispatcher("/decorators/product-details.jsp").forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}
}
