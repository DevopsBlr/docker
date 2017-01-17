package com.bean;

import java.util.Date;

public class Transaction {
	private long tran_id;
	private String acc_id;
	private String action;
	private Date date;
	private long amount;
	private String tar_acc_id;
	private String   acctype;
	private long   balance;
	private String     custid;
	private long curr_balance;
	
	
	
	public Transaction(long tran_id, String acc_id, String action, Date date,
			long amount, String tar_acc_id, String acctype, long balance,
			String custid, long curr_balance) {
		super();
		this.tran_id = tran_id;
		this.acc_id = acc_id;
		this.action = action;
		this.date = date;
		this.amount = amount;
		this.tar_acc_id = tar_acc_id;
		this.acctype = acctype;
		this.balance = balance;
		this.custid = custid;
		this.curr_balance = curr_balance;
	}
	public long getCurr_balance() {
		return curr_balance;
	}
	public void setCurr_balance(long curr_balance) {
		this.curr_balance = curr_balance;
	}
	public Transaction(String acc_id, long amount, String acctype, long balance,
			String custid) {
		super();
		this.acc_id = acc_id;
		this.amount = amount;
		this.acctype = acctype;
		this.balance = balance;
		this.custid = custid;
	}
	public long getBalance() {
		return balance;
	}
	public void setBalance(long balance) {
		this.balance = balance;
	}
	public String getAcctype() {
		return acctype;
	}
	public void setAcctype(String acctype) {
		this.acctype = acctype;
	}
	
	public String getCustid() {
		return custid;
	}
	public void setCustid(String custid) {
		this.custid = custid;
	}
	public long getTran_id() {
		return tran_id;
	}
	public void setTran_id(long tran_id) {
		this.tran_id = tran_id;
	}
	public String getAcc_id() {
		return acc_id;
	}
	public void setAcc_id(String acc_id) {
		this.acc_id = acc_id;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public String getTar_acc_id() {
		return tar_acc_id;
	}
	public void setTar_acc_id(String tar_acc_id) {
		this.tar_acc_id = tar_acc_id;
	}
	public Transaction(long tran_id, String acc_id, String action, Date date,
			long amount, String tar_acc_id) {
		super();
		this.tran_id = tran_id;
		this.acc_id = acc_id;
		this.action = action;
		this.date = date;
		this.amount = amount;
		this.tar_acc_id = tar_acc_id;
	}
	public Transaction() {
		super();
	}
	
	
	
}
