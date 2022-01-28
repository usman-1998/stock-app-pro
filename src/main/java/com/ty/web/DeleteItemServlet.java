package com.ty.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dao.ItemDao;


public class DeleteItemServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		ItemDao dao = new ItemDao();
		if(dao.deleteItem(Integer.parseInt(id))) {
			req.setAttribute("message", "Item Deleted");
			RequestDispatcher  dispatcher = req.getRequestDispatcher("createitem.jsp");
			dispatcher.forward(req, resp);
		}
	}

}
