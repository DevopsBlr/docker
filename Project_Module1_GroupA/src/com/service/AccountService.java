package com.service;

import java.util.ArrayList;


import com.DAO.AccountDao;
import com.bean.Account;
import com.bean.Customer;

public class AccountService {
	AccountDao dao = new AccountDao();

	public String addAccount(Account account) {

		return dao.addAccount(account);
	}

	public ArrayList<Account> viewAccount() {

		ArrayList<Account> aa = dao.viewAccount();
		return aa;
	}

	public ArrayList<Account> viewallAccountDetails() {

		return dao.viewallAccountDetails();
	}

	public Account viewAccountDetails(String accId) {

		return dao.viewAccountDetails(accId);

	}
	public ArrayList<Account> viewAccount(String customerId){
		return dao.viewAccount(customerId);
	}
	public Account viewAccountType(String accId,String customerId){
		return dao.viewAccountType(accId,customerId);
	}
	public int updateStatus(String accId,String customerId,String status){
		return dao.updateStatus(accId, customerId, status);
	}
	public ArrayList<Customer> viewcustomerid() {
		return dao.viewcustomerid();
	}
}
