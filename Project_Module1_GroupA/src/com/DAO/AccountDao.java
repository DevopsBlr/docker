package com.DAO;

import java.sql.*;

import java.util.ArrayList;

import com.DBUtil.DBUtil;


import com.bean.Account;
import com.bean.Customer;

public class AccountDao {
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public String addAccount(Account account) {
		int i = 0;
		long id = 0;
		String ii = "A";

		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement("select account_id.nextVal from dual");
			ResultSet result = ps.executeQuery();
			while (result.next()) {
				id = result.getLong(1);
			}
			ii += id;

			ps = con.prepareStatement("insert into tbl_account_tja58 values(?,?,?,?,?,?,?,?)");
			ps.setString(1, account.getCustomer_id());
			ps.setString(2, ii);
			ps.setString(3, String.valueOf(account.getAccount_type()));
			ps.setDouble(4, account.getBalance());
			ps.setDate(5, new java.sql.Date(account.getCredited_date().getDate()));
			ps.setDate(6, new java.sql.Date(account.getCredited_lastdate().getDate()));
			ps.setInt(7, account.getNoOfTransaction());
			ps.setString(8, account.getStatus());
			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			DBUtil.closeStatement(ps);
			DBUtil.closeConnection(con);

		}
		return ii;
	}

	public ArrayList<Account> viewAccount() {
		ArrayList<Account> act = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		con = DBUtil.getConnection();

		try {
			ps = con.prepareStatement("select * from tbl_account_tja58");
			// ps.setInt(1,accountId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Account ac = new Account();
				ac.setCustomer_id(rs.getString(1));
				ac.setAccount_id(rs.getString(2));
				ac.setAccount_type(rs.getString(3));
				ac.setBalance(rs.getInt(4));
				ac.setCredited_date(rs.getDate(5));
				ac.setCredited_lastdate(rs.getDate(6));
				ac.setNoOfTransaction(rs.getInt(7));
				ac.setStatus(rs.getString(8));
				act.add(ac);
				System.out.println("success");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(con);
			DBUtil.closeStatement(ps);
		}
		return act;
	}
	

		public ArrayList<Account> viewallAccountDetails(){
		ArrayList<Account>accountlist = new ArrayList<Account>();	
		Connection con = null;
		PreparedStatement ps = null;
		con = DBUtil.getConnection();

		try {
			ps = con.prepareStatement("select * from tbl_account_tja58");
			rs = ps.executeQuery();
			while(rs.next()){
				Account acc=new Account();
				System.out.println("executed");
			acc.setCustomer_id(rs.getString(1));
			acc.setAccount_id(rs.getString(2));
			acc.setAccount_type(rs.getString(3));
			acc.setBalance(rs.getInt(4));
			acc.setCredited_date(rs.getDate(5));
			acc.setCredited_lastdate(rs.getDate(6));
			acc.setNoOfTransaction(rs.getInt(7));
			acc.setStatus(rs.getString(8));
			accountlist.add(acc);
			}
		} catch (SQLException e) {
		  e.printStackTrace();
		}finally{
		DBUtil.closeConnection(con);
		DBUtil.closeStatement(ps);
		}

		return accountlist;
			
		}


		public Account viewAccountDetails(String accId){
		Account acc = new Account();

		con = DBUtil.getConnection();
		try {
			ps = con.prepareStatement("select *from tbl_account_tja58 where account_id= ?");
			ps.setString(1, accId);
			rs = ps.executeQuery();
			while(rs.next()){
			
			acc.setCustomer_id(rs.getString(1));
			acc.setAccount_id(rs.getString(2));
			acc.setAccount_type(rs.getString(3));
			acc.setBalance(rs.getInt(4));
			acc.setCredited_date(rs.getDate(5));
			acc.setCredited_lastdate(rs.getDate(6));
			acc.setNoOfTransaction(rs.getInt(7));
			acc.setStatus(rs.getString(8));
			
			
			}
		} catch (SQLException e) {
		  e.printStackTrace();
		}finally{
		DBUtil.closeConnection(con);
		DBUtil.closeStatement(ps);
		}

		return acc;
			
		}


		public ArrayList<Account> viewAccount(String customerId){
			ArrayList<Account> account=new ArrayList<>();

		con = DBUtil.getConnection();
		try {
			ps = con.prepareStatement("select *from tbl_account_tja58 where customer_id = ?");
			ps.setString(1, customerId);
			rs = ps.executeQuery();
			while(rs.next()){
			Account acc=new Account();
			acc.setCustomer_id(rs.getString(1));
			acc.setAccount_id(rs.getString(2));
			acc.setAccount_type(rs.getString(3));
			acc.setStatus(rs.getString(8));
			account.add(acc);
			
			}
		} catch (SQLException e) {
		  e.printStackTrace();
		}finally{
		DBUtil.closeConnection(con);
		DBUtil.closeStatement(ps);
		}

		return account;
			
		}
		public Account viewAccountType(String accId,String customerId){
			Account acc = new Account();
			con = DBUtil.getConnection();
			try {
				ps = con.prepareStatement("select * from tbl_account_tja58 where customer_id=? and account_id = ?");
				ps.setString(1, customerId);
				ps.setString(2, accId);
				rs = ps.executeQuery();
				while(rs.next()){
				
					acc.setCustomer_id(rs.getString(1));
					acc.setAccount_id(rs.getString(2));
				acc.setAccount_type(rs.getString(3));
				acc.setBalance(rs.getDouble(4));
				acc.setNoOfTransaction(rs.getInt(7));
				acc.setStatus(rs.getString(8));
				
				}
				System.out.println(acc.getStatus());
			} catch (SQLException e) {
			  e.printStackTrace();
			}finally{
			DBUtil.closeConnection(con);
			DBUtil.closeStatement(ps);
			}

			return acc;
				
			}
		public int updateStatus(String accId,String customerId,String status){
			Account acc = new Account();
			con = DBUtil.getConnection();
			int i=0;
			try {
				ps = con.prepareStatement("update tbl_account_tja58 set status=? where customer_id=? and account_id = ?");
				ps.setString(1, status);
				ps.setString(2, customerId);
				ps.setString(3, accId);
				i= ps.executeUpdate();
				

			} catch (SQLException e) {
			  e.printStackTrace();
			}finally{
			DBUtil.closeConnection(con);
			DBUtil.closeStatement(ps);
			}

			return i;
				
			}
		public ArrayList<Customer> viewcustomerid() {
			ArrayList<Customer> act = new ArrayList<>();
			Connection con = null;
			PreparedStatement ps = null;
			con = DBUtil.getConnection();

			try {
				ps = con.prepareStatement("select customer_id from tbl_customer_TJA58_GroupB");
				// ps.setInt(1,accountId);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					Customer ac = new Customer();
					ac.setCustomerId(rs.getString(1));
					
					act.add(ac);
				
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				DBUtil.closeConnection(con);
				DBUtil.closeStatement(ps);
			}
			return act;
		}
		

}
