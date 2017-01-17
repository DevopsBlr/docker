/**
 * 
 */
package com.bean;

import java.util.ArrayList;
import java.util.Date;

/**
 * @author 1129688
 *
 */
public class Account {
	private String customer_id;
	private String account_id;
	private String account_type;
	private double balance;
	private Date credited_date;
	private Date credited_lastdate;
	
	private int noOfTransaction;
	private String status;
	public Account() {
		super();
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getAccount_id() {
		return account_id;
	}

	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}

	public String getAccount_type() {
		return account_type;
	}

	public void setAccount_type(String account_type) {
		this.account_type = account_type;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public Date getCredited_date() {
		return credited_date;
	}

	public void setCredited_date(Date credited_date) {
		this.credited_date = credited_date;
	}

	public Date getCredited_lastdate() {
		return credited_lastdate;
	}

	public void setCredited_lastdate(Date credited_lastdate) {
		this.credited_lastdate = credited_lastdate;
	}

	public int getNoOfTransaction() {
		return noOfTransaction;
	}

	public void setNoOfTransaction(int noOfTransaction) {
		this.noOfTransaction = noOfTransaction;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Account(String customer_id, String account_type, double balance,
			Date credited_date, Date credited_lastdate, int noOfTransaction,
			String status) {
		super();
		this.customer_id = customer_id;
		this.account_type = account_type;
		this.balance = balance;
		this.credited_date = credited_date;
		this.credited_lastdate = credited_lastdate;
		this.noOfTransaction = noOfTransaction;
		this.status = status;
	}

	
	
}
