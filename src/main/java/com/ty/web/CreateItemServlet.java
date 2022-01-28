package com.ty.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dao.ItemDao;
import com.ty.dto.Item;

public class CreateItemServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String brand = req.getParameter("brand");
		String cost = req.getParameter("cost");
		String qnt = req.getParameter("qnt");
		String type = req.getParameter("type");
		
		Item item = new Item();
		item.setName(name);
		item.setBrand(brand);
		item.setCost(Double.parseDouble(cost));
		item.setQnt(Integer.parseInt(qnt));
		item.setType(type);;
		
		ItemDao dao = new ItemDao();
		dao.saveItem(item);
		
		req.setAttribute("message", "Item added");
		RequestDispatcher  dispatcher = req.getRequestDispatcher("createitem.jsp");
		dispatcher.forward(req, resp);
	}

}
