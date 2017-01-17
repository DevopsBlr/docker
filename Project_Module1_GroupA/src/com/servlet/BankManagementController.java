package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Customer;
import com.bean.Employee;
import com.service.BankManagementService;

/**
 * Servlet implementation class BankManagementController
 */
public class BankManagementController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BankManagementController() {
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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = null;

		String source = request.getParameter("source");
		HttpSession session = request.getSession();

		if (source.equalsIgnoreCase("createcustomer")) {
			rd = request.getRequestDispatcher("/JSP/AddCustomer.jsp");
			rd.forward(request, response);

		} else if (source.equalsIgnoreCase("add")) {

			// confirm page

			Customer cust = new Customer();
			// logger.debug("CustomerId supplied for Addition: "+"itemid");
			// cust.setCustomerId(request.getParameter("CustId"));
			cust.setStatus(request.getParameter("status"));
			cust.setSsnId(Long.parseLong(request.getParameter("ssnId")));
			cust.setCustomerName(request.getParameter("CustName"));
			cust.setAge(Integer.parseInt(request.getParameter("Age")));
			cust.setAddressLine1(request.getParameter("AddLine1"));
			cust.setAddressLine2(request.getParameter("AddLine2"));
			cust.setCity(request.getParameter("city"));
			cust.setState(request.getParameter("state"));

			// int i=BankManagementService.addCustomer(cust);

			request.setAttribute("Customer", cust);

			rd = request.getRequestDispatcher("/JSP/ConfirmCancel.jsp");
			rd.forward(request, response);
		} else if (source.equalsIgnoreCase("Confirm")) {
			System.out.println("in confirm");
			Customer cust = new Customer();
			// cust.setCustomerId(request.getParameter("CustId"));
			cust.setStatus(request.getParameter("Status"));
			cust.setSsnId(Long.parseLong(request.getParameter("ssnId")));
			cust.setCustomerName(request.getParameter("CustName"));
			cust.setAge(Integer.parseInt(request.getParameter("Age")));
			cust.setAddressLine1(request.getParameter("AddLine1"));
			cust.setAddressLine2(request.getParameter("AddLine2"));
			cust.setCity(request.getParameter("City"));
			cust.setState(request.getParameter("State"));
			// logger.debug("CustomerId supplied for Addition: "+"itemid");

			String i = BankManagementService.addCustomer(cust);
			if (i.equalsIgnoreCase("start")) {
				response.sendRedirect(request.getContextPath()
						+ "/JSP/Failure.jsp");

			} else if (i.equalsIgnoreCase("ssnid alreay exist")) {
				response.sendRedirect(request.getContextPath()
						+ "/JSP/Failure.jsp");
			} else {
				System.out.println("sucess");
				request.setAttribute("message", i);
				rd = request.getRequestDispatcher("/JSP/Success.jsp");
				rd.forward(request, response);
			}
		} else if (source.equalsIgnoreCase("Cancel")) {
			System.out.println("customer not added");
			rd = request.getRequestDispatcher("/JSP/AddCustomer.jsp");
			rd.forward(request, response);

		} else if (source.equalsIgnoreCase("home")) {

			rd = request.getRequestDispatcher("/JSP/managerhome.jsp");
			rd.forward(request, response);

		} else if (source.equalsIgnoreCase("viewcashier")) {

			rd = request.getRequestDispatcher("/JSP/Cashier.jsp");
			rd.forward(request, response);

		} else if (source.equalsIgnoreCase("dropdown")) {
			ArrayList<String> list = new ArrayList<String>();
			list = BankManagementService.getCustomer();

			request.setAttribute("idList", list);
			rd = request.getRequestDispatcher("/JSP/UpdatePage.jsp");
			rd.forward(request, response);

		}

		else if (source.equalsIgnoreCase("update")) {
			// update page
			String Custid = request.getParameter("CustId");
			Customer cust = BankManagementService.viewProfile(Custid);
			if (cust.getCustomerId() != null) {
				request.setAttribute("custObj", cust);
				rd = request.getRequestDispatcher("/JSP/UpdateDetails.jsp");

				rd.forward(request, response);
			} else {
				System.out.println("Sorry no such customer");
				response.sendRedirect(request.getContextPath()
						+ "/JSP/Failure2.jsp");
			}
		} else if (source.equalsIgnoreCase("updatedetails")) {
			Customer cust = new Customer();
			cust.setCustomerId(request.getParameter("CustId"));
			cust.setStatus(request.getParameter("status"));
			cust.setSsnId(Long.parseLong(request.getParameter("ssnId")));
			cust.setCustomerName(request.getParameter("CustName"));
			cust.setAge(Integer.parseInt(request.getParameter("Age")));
			cust.setAddressLine1(request.getParameter("AddLine1"));
			cust.setAddressLine2(request.getParameter("AddLine2"));
			cust.setCity(request.getParameter("city"));
			cust.setState(request.getParameter("state"));
			int i = BankManagementService.updateCustomer(cust);

			if (i > 0) {
				System.out.println("updated sucesfully");
				request.setAttribute("user", cust.getCustomerId());
				rd = request.getRequestDispatcher("/JSP/UpdateSuccess.jsp");

				rd.forward(request, response);
			} else {
				request.setAttribute("user", cust.getCustomerId());
				rd = request.getRequestDispatcher("/JSP/UpdateFailure.jsp");

				rd.forward(request, response);
			}

		} else if (source.equalsIgnoreCase("viewall")) {
			ArrayList<Customer> list = new ArrayList<Customer>();
			System.out.println("dgdfg");
			list = BankManagementService.viewAllCustomer();
			request.setAttribute("cusList", list);
			rd = request.getRequestDispatcher("/JSP/ViewAll.jsp");
			rd.forward(request, response);

		}
		// view all page common for manager and cashier
		else if (source.equalsIgnoreCase("viewprofile")) {
			// customers profile view
			System.out.println("in view profile");
			String Id = request.getParameter("user");
			session.setAttribute("userview", Id);
			Customer profile = new Customer();
			profile = BankManagementService.viewProfile(Id);
			request.setAttribute("profileView", profile);
			rd = request.getRequestDispatcher("/JSP/ViewProfile.jsp");
			rd.forward(request, response);

		} else if (source.equalsIgnoreCase("changestatus")) {
			String id = request.getParameter("customer");
			int i = BankManagementService.updateStatus(id);
			System.out.println(i);
			if (i > 0) {
				request.setAttribute("user", id);
				rd = request.getRequestDispatcher("/JSP/StatusSuccess.jsp");
				rd.forward(request, response);

			} else {
				request.setAttribute("user", id);
				rd = request.getRequestDispatcher("/JSP/StatusFail.jsp");
				rd.forward(request, response);
			}
		} else if (source.equalsIgnoreCase("security")) {
			String id = request.getParameter("user");
			session.setAttribute("user", id);
			rd = request.getRequestDispatcher("/JSP/SecurityQustn.jsp");
			rd.forward(request, response);
		} else if (source.equalsIgnoreCase("SecureAns")) {
			String id = request.getParameter("user");
			String qno = request.getParameter("securtiyQn");
			String pswd = request.getParameter("pswd");
			System.out.println(qno);
			String ans = request.getParameter("ans");
			int i = BankManagementService.securityAnswers(id, qno, ans, pswd);
			if (i > 0) {
				System.out.println("success");

				response.sendRedirect(request.getContextPath()
						+ "/JSP/Success.jsp");

			} else {
				System.out.println("failed to update pwd");
				response.sendRedirect(request.getContextPath()
						+ "/JSP/CustomerAlreadyExist.jsp");
			}
		} else if (source.equalsIgnoreCase("validate")) {
			String id = request.getParameter("id");
			System.out.println("" + id);
			String qno = request.getParameter("securtiyQn");
			String ans = request.getParameter("ans");
			int i = BankManagementService.getAnswer(id, qno, ans);
			if (i > 0) {
				request.setAttribute("user", id);
				rd = request.getRequestDispatcher("/JSP/ChangePwd.jsp");
				rd.forward(request, response);

			} else {
				response.sendRedirect(request.getContextPath()
						+ "/JSP/PwdFailure.jsp");

			}
		} else if (source.equalsIgnoreCase("pwdChanged")) {
			String pwd = request.getParameter("input");
			String id = request.getParameter("user");
			int i = BankManagementService.UpdatePassword(id, pwd);
			if (i > 0) {
				response.sendRedirect(request.getContextPath()
						+ "/JSP/index.jsp");
			} else {
				response.sendRedirect(request.getContextPath()
						+ "/JSP/PwdFailure.jsp");
			}
		} else if (source.equalsIgnoreCase("viewallcash")) {
			ArrayList<Customer> list = new ArrayList<Customer>();
			list = BankManagementService.viewAllCustomer();
			request.setAttribute("cusList", list);
			rd = request.getRequestDispatcher("/JSP/ViewAllCash.jsp");
			rd.forward(request, response);

		} else if (source.equalsIgnoreCase("myProfile")) {
			String Id = request.getParameter("user");
			session.setAttribute("userview", Id);
			Employee e = new Employee();
			e = BankManagementService.ViewEmpProfile(Id);
			request.setAttribute("profileView", e);
			rd = request.getRequestDispatcher("/JSP/EmpProfile.jsp");
			rd.forward(request, response);

		} else if (source.equalsIgnoreCase("myProfilecashier")) {
			String Id = request.getParameter("user");
			session.setAttribute("userview", Id);
			Employee e = new Employee();
			e = BankManagementService.ViewEmpProfile(Id);
			request.setAttribute("profileView", e);
			rd = request.getRequestDispatcher("/JSP/myprofilecashier.jsp");
			rd.forward(request, response);

		}else if(source.equals("emppwd")){
			String Id = request.getParameter("user");
			request.setAttribute("user", Id);
			rd = request.getRequestDispatcher("/JSP/ChangePwd.jsp");
			rd.forward(request, response);
			
		}

	}

}
