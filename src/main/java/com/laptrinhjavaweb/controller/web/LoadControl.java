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

@WebServlet(name = "LoadControl", urlPatterns = "/loadProduct")
public class LoadControl extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("pid");

		DAO dao = new DAO();
		Product p = dao.getProductByID(id);
		List<Category> listC = dao.getAllCategory();

		request.setAttribute("detail", p);
		request.setAttribute("listCC", listC);
		request.getRequestDispatcher("/views/edit.jsp").forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}
}
