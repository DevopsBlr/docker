package com.service;

import java.util.ArrayList;
import java.util.Date;

import com.DAO.Dao;
import com.bean.*;


public class Ser {
Dao d = new Dao();

public long getBalance(String accId) {
	// TODO Auto-generated method stub
	long v = d.getBalance(accId);
	return v;
}

public void updateBalance(long u, String accId) {
	// TODO Auto-generated method stub
	d.updateBalance(u,accId);
	
}


public long insertTransaction(String accId, String action, long deposit,long curr) {
	// TODO Auto-generated method stub
	 return d.insertTransaction(accId,action,deposit,curr);	
}

public long insertTransaction(String accId, String action, long tamount,
		String taccId,long curr) {
	// TODO Auto-generated method stub
	 return d.insertTransaction( accId, action, tamount,taccId,curr);
	
}

public ArrayList<String> getcustomer() {
	// TODO Auto-generated method stub
	return d.getcustomer();
}

public ArrayList<String> getaccounts() {
	 
	return d.getaccounts();
}

public Transaction view(String accountid) {
	
	return d.view(accountid);
}



public ArrayList<Transaction> getstatement(String accountid, String start_date,String end_date) {
	// TODO Auto-generated method stub
	return d.getstatement(accountid,start_date, end_date);

}

public ArrayList<Transaction> gettenstatement(String accountid) {
	// TODO Auto-generated method stub
	return d.gettenstatement(accountid);
}

public ArrayList<String> getacctsofcust(String customer_id) {
	// TODO Auto-generated method stub
	return d.getacctsofcust(customer_id);
}

public void updateDate(long tran, String accId) {
	// TODO Auto-generated method stub
	d.updateDate(tran,accId);
	
}

public void numberoftrans(String accId) {
	d.numberoftrans(accId);
	
}

public ArrayList<Transaction> getalltransatcions() {
	// TODO Auto-generated method stub
	return d.getalltransatcions();
}





}
