package com.servlet;

import java.io.IOException;




import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.AccountService;

import com.bean.*;


/**
 * Servlet implementation class AccountController
 */
@WebServlet("/AccountController")
public final class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AccountService service = new AccountService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccountController() {
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
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if(action.equals("add")){
			String customerId = request.getParameter("customerid");
			System.out.println(customerId);
			
			request.setAttribute("aaa", customerId);
			System.out.println("cust"+customerId);
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/CreateAccount.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("home")){
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/index.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("menu")){
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/menu.jsp");
			rd.forward(request, response);
		}	else if(action.equals("managerhome")){
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/managerhome.jsp");
			rd.forward(request, response);
		}
	
		else if (action.equals("Submit")) {
			String customerId = request.getParameter("customerid");
	
			String accountType = request.getParameter("type");
		}
		else if (action.equals("Submit")) {
			String customerId = request.getParameter("customerid");
			System.out.println(customerId);
			String accountType = request.getParameter("type");
			
			double balance = Double.parseDouble(request.getParameter("amount"));
			java.util.Date crdate = DateUtil.convertStringToDate("00/00/0000",
					"dd/MM/yyyy");
			java.util.Date crlastdate = DateUtil.convertStringToDate(
					"00/00/0000", "dd/MM/yyyy");
			;
			int no = 0;
			String status = "Active";
			Account account = new Account(customerId, accountType, balance,
					crdate, crlastdate, no, status);
			String i = service.addAccount(account);
			
			request.setAttribute("aaa", i);
			request.setAttribute("account", account);
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/accountsuccess.jsp");
			rd.forward(request, response);
			

		} 
		
		else if(action.equals("updatepage")){
			ArrayList<Customer> cus=new ArrayList<>();
			cus=service.viewcustomerid();
			request.setAttribute("aaa", cus);
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/Updatestatus.jsp");
			rd.forward(request, response);
		}
		else if (action.equals("View")) {
			ArrayList<Account> aaa = service.viewAccount();
			request.setAttribute("result", aaa);

			RequestDispatcher rd = request.getRequestDispatcher("JSP/view.jsp");
			rd.forward(request, response);

		} else if (action != null && action.equals("viewall")) {
			ArrayList<Account> accountlist = service.viewallAccountDetails();
			request.setAttribute("accountrecords", accountlist);
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/viewallaccountcash.jsp");
			rd.forward(request, response);

		}
		 else if (action != null && action.equals("viewallmang")) {
				ArrayList<Account> accountlist = service.viewallAccountDetails();
				request.setAttribute("accountrecords", accountlist);
				RequestDispatcher rd = request
						.getRequestDispatcher("JSP/viewallaccounts.jsp");
				rd.forward(request, response);

			}

		else if (action != null && action.equals("Search_account")) {
			String accId =request.getParameter("accountid");
			System.out.println(accId);
			Account acc = service.viewAccountDetails(accId);

		

			
				RequestDispatcher rd = request
						.getRequestDispatcher("JSP/viewcustomers.jsp");
				
				request.setAttribute("account", acc);
				rd.forward(request, response);


		}
		else if (action != null && action.equals("Fetch")) {
			String accId =request.getParameter("accountid");
			System.out.println(accId);
			Account acc = service.viewAccountDetails(accId);

		

			
				RequestDispatcher rd = request
						.getRequestDispatcher("JSP/viewcustomercashier.jsp");
				
				request.setAttribute("account", acc);
				rd.forward(request, response);


		}
		else if(action.equals("menu")){
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/menu.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("updatepage")){
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/Updatestatus.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("Search")){
		
			String customerid=request.getParameter("cust_id");
			ArrayList<Account> ac=service.viewAccount(customerid);
			
				RequestDispatcher rd = request
						.getRequestDispatcher("JSP/update.jsp");
				request.setAttribute("customer", customerid);
				request.setAttribute("account", ac);
				rd.forward(request, response);
			
			
		}
		else if(action.equals("alll")){
			String customerid=request.getParameter("customer");
		
			String accountid=request.getParameter("id");
	
			Account ac1=service.viewAccountType(accountid,customerid);
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/viewupdate.jsp");
			
			request.setAttribute("customer", customerid);
			request.setAttribute("account", accountid);
			request.setAttribute("account1", ac1);
			rd.forward(request, response);
		}
		else if(action.equals("Active"))
		{
			String customerid=request.getParameter("customerid");
			
			String status = "Active";
			
			String accountid=request.getParameter("accountid");
			
			int i=0;
			i=service.updateStatus(accountid, customerid, status);
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/updatesuccessfully.jsp");
			
			request.setAttribute("customer", i);
			request.setAttribute("name", status);
			rd.forward(request, response);
			
		}
		else if( action.equals("Deactive"))
		{
			String customerid=request.getParameter("customerid");
			System.out.println(customerid);
			
			String status = "Deactive";
			
			String accountid=request.getParameter("accountid");
			
			int i=0;
			i=service.updateStatus(accountid, customerid, status);
			RequestDispatcher rd = request
					.getRequestDispatcher("JSP/updatesuccessfully.jsp");
		
			request.setAttribute("customer", i);
			request.setAttribute("name", status);
			int ii=(int) request.getAttribute("customer");
			request.setAttribute("customer", ii);
			rd.forward(request, response);
			
		}
				
	}

}
