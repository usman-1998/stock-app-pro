package com.ty.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dao.ItemDao;
import com.ty.dto.Item;

public class GetItemServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		int parsedId = Integer.parseInt(id);
		
		ItemDao dao = new ItemDao();
		
		Item student = dao.getItemById(parsedId);
		req.setAttribute("myItem", student);
		RequestDispatcher  dispatcher = req.getRequestDispatcher("EditItem.jsp");
		dispatcher.forward(req, resp);	
	}

}
