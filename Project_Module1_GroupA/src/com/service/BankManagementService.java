package com.service;

import java.util.ArrayList;

import com.DAO.BankManagementDAO;
import com.bean.Customer;
import com.bean.Employee;

public class BankManagementService {
	
	public static String loginManagement(String userId,String password){
		return BankManagementDAO.loginManagement(userId, password);
		
	}

	
	public static String addCustomer(Customer cust){
		return BankManagementDAO.addCustomer(cust);
		
	}
	
	public static int updateCustomer(Customer cust){
		return BankManagementDAO.updateCustomer(cust);
	}
	
	
	public static ArrayList<Customer> viewAllCustomer(){
		
		return BankManagementDAO.viewAllCustomer();
		
	}
	
	
	
	public static Customer viewProfile(String custId){
		return BankManagementDAO.viewProfile(custId);
		
	}
	
	public static int updateStatus(String custId){
		
		return BankManagementDAO.updateStatus(custId);
		
	}
	public static int securityAnswers(String custId,String qno, String secureAns,String pswd){
		return BankManagementDAO.securityAnswers(custId,qno, secureAns,pswd);
	}
	public static int getAnswer(String custId,String qno,String securityAns){
		return BankManagementDAO.getAnswer(custId, qno,securityAns);
	}


	public static int UpdatePassword(String id, String pwd) {
		
		return BankManagementDAO.UpdatePassword(id,pwd);
	}
	
	public static Employee ViewEmpProfile(String empId)
	{
		return BankManagementDAO.ViewEmpProfile(empId);
	}


	public static ArrayList<String> getCustomer() {
		// TODO Auto-generated method stub
		return BankManagementDAO.getcustomer() ;
	}
	
	public static String getEmpName(String userId)
	{
		return BankManagementDAO.getEmpName(userId) ;
		
	}
}



