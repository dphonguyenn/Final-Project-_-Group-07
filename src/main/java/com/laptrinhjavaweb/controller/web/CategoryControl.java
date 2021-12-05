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

@WebServlet( name = "CategoryControl",urlPatterns = "/category")
public class CategoryControl extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5080765871509740649L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cateID = request.getParameter("cid");

		DAO dao = new DAO();
		List<Product> list = dao.getProductByCID(cateID);
		List<Category> listC = dao.getAllCategory();
		Product last = dao.getLastProduct();

		request.setAttribute("listP", list);
		request.setAttribute("listCC", listC);
		request.setAttribute("p", last);
		request.getRequestDispatcher("/views/home.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}


}
