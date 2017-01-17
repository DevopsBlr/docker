package com.servlet;

import java.io.IOException;

import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.BankManagementService;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static Logger logger = Logger.getLogger(LoginController.class);
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		logger.info("Inside doGet method of Item Controller");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd;
		String Source;
		Source = request.getParameter("source");
		HttpSession session=request.getSession();
		System.out.println(Source);
		if (Source.equalsIgnoreCase("login")) {
			String userId = request.getParameter("username");
			String password = request.getParameter("password");
			String empName=BankManagementService.getEmpName(userId);
			System.out.println(empName);
			System.out.println(userId);
			System.out.println(password);
			String result = BankManagementService.loginManagement(userId,password);
			System.out.println(result);
			session.setAttribute("s", result);
			
			if (result.equals("null")) {
				System.out.println("credential wrong");
				//session.setAttribute("s", "1");
				request.setAttribute("result","Invalid Username/Password");
				rd = request.getRequestDispatcher("/JSP/index.jsp");
				rd.forward(request, response);
				
			} else if (result.equalsIgnoreCase("inactive")) {
				System.out.println("in active user");
				request.setAttribute("result","Inactive user. Please contact bank");
				rd = request.getRequestDispatcher("/JSP/index.jsp");
				rd.forward(request, response);
				
			} else if (result.equalsIgnoreCase("manager")) {
				session.setAttribute("name", empName);
				session.setAttribute("user", userId);
				rd = request.getRequestDispatcher("/JSP/Manager.jsp");
				rd.forward(request, response);
			} else if (result.equalsIgnoreCase("cashier")) {
				session.setAttribute("name", empName);
				session.setAttribute("user", userId);
				rd = request.getRequestDispatcher("/JSP/Cashier.jsp");
				rd.forward(request, response);
			} else if (result.equalsIgnoreCase("customer")) {
				session.setAttribute("user", userId);
				rd = request.getRequestDispatcher("/JSP/Customer.jsp");
				rd.forward(request, response);

			}

		}
	}
}
