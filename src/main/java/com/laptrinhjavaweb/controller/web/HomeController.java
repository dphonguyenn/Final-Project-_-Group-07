package com.laptrinhjavaweb.controller.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavaweb.model.UserModel;

import murach.business.User;
import murach.data.UserDB;

@WebServlet(urlPatterns = { "/index", "/trang-chu", "/dang-nhap", "/cart", "/blog-single", "/blog", "/404", "/checkout",
		"/contact-us", "/product-details" })
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 2686801510274002166L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("cart")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/cart.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("blog-single")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/blog-single.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("blog")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/blog.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("404")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/404.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("checkout")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/checkout.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("contact-us")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/contact-us.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("product-details")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/product-details.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("trang-chu")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/index.jsp");
			rd.forward(request, response);
		}
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
