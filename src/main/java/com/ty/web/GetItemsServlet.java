package com.ty.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dao.ItemDao;
import com.ty.dto.Item;

public class GetItemsServlet extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 ItemDao dao = new ItemDao();
		 
		ArrayList<Item> items = dao.getAllItem();
		
		req.setAttribute("items", items);
		RequestDispatcher dispatcher = req.getRequestDispatcher("displayitem.jsp");
		dispatcher.forward(req, resp);
		
		for (Item i : items) {
			System.out.println(i.getName());
		}
	}

}
