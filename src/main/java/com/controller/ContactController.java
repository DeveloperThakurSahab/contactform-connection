package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Contact;
import com.dao.ContactDao;

@WebServlet("/ContactController")
public class ContactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("send")) {
			Contact c = new Contact();
			c.setName(request.getParameter("name"));
			c.setPhone(Long.parseLong(request.getParameter("phone")));
			c.setEmail(request.getParameter("email"));
			c.setSubject(request.getParameter("subject"));
			c.setMessage(request.getParameter("message"));
			ContactDao.insertContact(c);
			response.sendRedirect("show.jsp");
		}
		else if(action.equalsIgnoreCase("edit")) {
			int id = Integer.parseInt(request.getParameter("id"));
			Contact c = ContactDao.getAllContactById(id);
			request.setAttribute("c", c);
			request.getRequestDispatcher("update.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("update")) {
			Contact c = new Contact();
			c.setId(Integer.parseInt(request.getParameter("id")));
			c.setName(request.getParameter("name"));
			c.setPhone(Long.parseLong(request.getParameter("phone")));
			c.setEmail(request.getParameter("email"));
			c.setSubject(request.getParameter("subject"));
			c.setMessage(request.getParameter("message"));
			ContactDao.updateContact(c);
			response.sendRedirect("show.jsp");
		}
		else if(action.equalsIgnoreCase("delete")) {
			int id = Integer.parseInt(request.getParameter("id"));
			ContactDao.deleteContact(id);
			response.sendRedirect("show.jsp");
		}
	}
	
}