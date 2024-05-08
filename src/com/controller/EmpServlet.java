 package com.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import com.dao.EmpDao;
import com.dao.UserDao;
import com.model.Employee;
import com.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;


@MultipartConfig(maxRequestSize=999999999,maxFileSize=999999999)//this is for image

@SuppressWarnings("serial")
@WebServlet("/EmpServlet")
public class EmpServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if (request.getParameter("b1").equals("Delete")) {
			EmpDao ed = new EmpDao();
			Employee e = new Employee();
			e.setEid(Integer.parseInt(request.getParameter("eid")));

			if (ed.deleteEmployee(e) > 0) {
				request.getRequestDispatcher("NewFile.jsp").forward(request, response);
			}
		}

		
		if (request.getParameter("b1").equals("Update")) {
			EmpDao ed = new EmpDao();
			Employee e = new Employee();
			e.setEid(Integer.parseInt(request.getParameter("eid")));
			e.setEname(request.getParameter("ename"));
			e.setEemail(request.getParameter("eemail"));
			e.setEpassword(request.getParameter("epassword"));
			e.setEdesignation(request.getParameter("edesignation"));
			e.setEsalary(Double.parseDouble(request.getParameter("esalary")));
			//Part filepart =request.getPart("eimage");
			//InputStream input = filepart.getInputStream();
			//e.setEimage(org.apache.commons.io.IOUtils.toByteArray(input));			
			if (ed.updateEmployee(e) > 0) {
				request.getRequestDispatcher("NewFile.jsp").forward(request, response);
			}
		}
		
		
		
		if (request.getParameter("b1").equals("Search")) {

			EmpDao ed = new EmpDao();
			Employee e = ed.displayEmployee(Integer.parseInt(request.getParameter("eid")));

			if ((e) != null) 
			{

				request.setAttribute("e1", e);
				request.getRequestDispatcher("NewFile3.jsp").forward(request, response);
			}
		}
		
		
		if (request.getParameter("b1").equals("UpdateEmp")) 
		{
		EmpDao ed = new EmpDao();
		Employee e = ed.displayEmployee(Integer.parseInt(request.getParameter("eid")));
		if ((e) != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("e1", e);
			request.getRequestDispatcher("NewFile6.jsp").forward(request, response);
		}
		
	}
	

	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if (request.getParameter("b1").equals("Create Account"))
		{
			User u = new User();
			u.setUname(request.getParameter("uname"));
			u.setUemail(request.getParameter("uemail"));
			u.setUpassword(request.getParameter("upassword"));
			u.setUgender(request.getParameter("ugender"));

			u.setUimage(org.apache.commons.io.IOUtils.toByteArray(request.getPart("uimage").getInputStream()));		
		    UserDao ud =new UserDao();
		    try {
				if(ud.createUser(u)>0)
				{
					request.getRequestDispatcher("Startpage.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
			if (request.getParameter("b1").equals("SignIn"))
			{
				UserDao ud = new UserDao();
				User u = null;
				try {
					u = ud.loginUser(request.getParameter("uemail"), request.getParameter("upassword"));
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if (u == null) {
					request.getRequestDispatcher("Startpage.jsp").forward(request, response);
				} else {
					HttpSession session = request.getSession();
					session.setAttribute("u", u);
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
			}
		
		
		
		
		if (request.getParameter("b1").equals("Insert")) {

			Employee e = new Employee();
			e.setEname(request.getParameter("ename"));
			e.setEemail(request.getParameter("eemail"));
			e.setEpassword(request.getParameter("epassword"));
			e.setEdesignation(request.getParameter("edesignation"));
			e.setEsalary(Double.parseDouble(request.getParameter("esalary")));
			Part filepart = request.getPart("eimage");
			InputStream input = filepart.getInputStream();
			e.setEimage(org.apache.commons.io.IOUtils.toByteArray(input));
			EmpDao ed = new EmpDao();
			if (ed.insertEmployee(e) > 0) {
				request.getRequestDispatcher("NewFile.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("NewFile2.jsp").forward(request, response);
			}
		}
		
		
		if (request.getParameter("b1").equals("Delete")) {
			EmpDao ed = new EmpDao();
			Employee e = new Employee();
			e.setEid(Integer.parseInt(request.getParameter("eid")));

			if (ed.deleteEmployee(e) > 0) {
				request.getRequestDispatcher("NewFile.jsp").forward(request, response);
			}
		}
		
		
		
		
		if (request.getParameter("b1").equals("Search")) {

			EmpDao ed = new EmpDao();
			Employee e = ed.displayEmployee(Integer.parseInt(request.getParameter("eid")));

			if ((e) != null) {

				request.setAttribute("e1", e);
				request.getRequestDispatcher("NewFile3.jsp").forward(request, response);
			}
		}
		
		if (request.getParameter("b1").equals("UpdateEmp")) 
			{
			EmpDao ed = new EmpDao();
			Employee e = ed.displayEmployee(Integer.parseInt(request.getParameter("eid")));
			if ((e) != null) {
				
				HttpSession session = request.getSession();
				session.setAttribute("e1", e);
				request.getRequestDispatcher("NewFile6.jsp").forward(request, response);
			}
			else
			{
				request.getRequestDispatcher("NewFile.jsp").forward(request, response);
			}
		}
		
		
		if (request.getParameter("b1").equals("Update")) {
			EmpDao ed = new EmpDao();
			Employee e = new Employee();
			e.setEid(Integer.parseInt(request.getParameter("eid")));
			e.setEname(request.getParameter("ename"));
			e.setEemail(request.getParameter("eemail"));
			e.setEpassword(request.getParameter("epassword"));
			e.setEdesignation(request.getParameter("edesignation"));
			e.setEsalary(Double.parseDouble(request.getParameter("esalary")));
			//Part filepart =request.getPart("eimage");
			//InputStream input = filepart.getInputStream();
			//e.setEimage(org.apache.commons.io.IOUtils.toByteArray(input));			
			if (ed.updateEmployee(e) > 0) {
				request.getRequestDispatcher("NewFile.jsp").forward(request, response);
			}
		}
		
	}
}
