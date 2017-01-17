package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DBUtil.DBUtil;
import com.bean.Customer;
import com.bean.Employee;

public class BankManagementDAO {

	public static String loginManagement(String userId, String password) {

		Connection con = DBUtil.getConnection();
		PreparedStatement ps;
		PreparedStatement ps1; //devops
		PreparedStatement ps2; //devops
		ResultSet rs;
		String status = "null";
		String role = "null";
		try {
			ps1=con.prepareStatement("create table tbl_login_tja58(userId varchar2(25) not null,password varchar2(25) not null,role varchar2(10) not null,Status varchar2(15) not null)");
			ps1.executeUpdate();
			ps2=con.prepareStatement("insert into tbl_login_tja58(admin,admin123,manager,active)");
			ps2.executeUpdate();
			ps = con.prepareStatement("select role,Status,password from tbl_login_tja58 where userId=? and password=?");
			ps.setString(1, userId);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while (rs.next()) {
				status = rs.getString(2);
				if (status.equalsIgnoreCase("active")) {
					role = rs.getString(1);
				} else if (status.equalsIgnoreCase("inactive")) {
					role = "inactive";
				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return role;

	}

	public static String addCustomer(Customer cust) {
		String i = "start";
		Connection con = DBUtil.getConnection();
		PreparedStatement ps;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement("select SsnId  from TBL_CUSTOMER_TJA58");
			rs = ps.executeQuery();
			while (rs.next()) {
				if (rs.getLong(1) == cust.getSsnId()) {
					System.out.println("already exist");
					i = "ssnid alreay exist";
				}

			}
			if (i.equals("start")) {
				ps = con.prepareStatement("insert into TBL_CUSTOMER_TJA58 values('CUS'||Customer_TJA58.nextval,?,?,?,?,?,?,?,?)");
				// ps.setString(1, cust.getCustomerId());

				ps.setString(1, cust.getStatus());
				ps.setLong(2, cust.getSsnId());
				ps.setString(3, cust.getCustomerName());
				ps.setInt(4, cust.getAge());
				ps.setString(5, cust.getAddressLine1());
				ps.setString(6, cust.getAddressLine2());
				ps.setString(7, cust.getCity());
				ps.setString(8, cust.getState());
				int j = ps.executeUpdate();
				if (j > 0) {
					ps = con.prepareStatement("insert into tbl_login_tja58 values('CUS'||Customer_TJA58.currval,?,?,?)");
					ps.setString(1, "user123");
					ps.setString(2, "customer");
					ps.setString(3, "active");
					int k = ps.executeUpdate();
					ps = con.prepareStatement("select Customer_TJA58.currval from dual");
					rs = ps.executeQuery();
					while (rs.next()) {
						i = rs.getString(1);
					}
				}
				System.out.println(i);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;
	}

	public static int updateCustomer(Customer cust) {
		int i = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement ps;

		try {
			ps = con.prepareStatement("update tbl_customer_tja58 set CustomerName=? , Age=?,AddressLine1=?,AddressLine2=?,City=? where CustomerId=?");
			ps.setString(1, cust.getCustomerName());
			ps.setInt(2, cust.getAge());
			ps.setString(3, cust.getAddressLine1());
			ps.setString(4, cust.getAddressLine2());
			ps.setString(5, cust.getCity());

			ps.setString(6, cust.getCustomerId());
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	public static ArrayList<Customer> viewAllCustomer() {
		ArrayList<Customer> custList = new ArrayList<Customer>();
		Connection con = DBUtil.getConnection();
		PreparedStatement ps;
		ResultSet rs;
		try {
			ps = con.prepareStatement("select * from  tbl_customer_tja58 ORDER BY CustomerId DESC");
			rs = ps.executeQuery();
			while (rs.next()) {
				Customer cust = new Customer();
				cust.setCustomerId(rs.getString(1));
				cust.setStatus(rs.getString(2));
				cust.setSsnId(rs.getLong(3));
				cust.setCustomerName(rs.getString(4));
				cust.setAge(rs.getInt(5));
				cust.setAddressLine1(rs.getString(6));
				cust.setAddressLine2(rs.getString(7));
				cust.setCity(rs.getString(8));
				cust.setState(rs.getString(9));
				custList.add(cust);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return custList;
	}

	public static Customer viewProfile(String custId) {
		Customer cust = new Customer();
		Connection con = DBUtil.getConnection();
		PreparedStatement ps;
		ResultSet rs;
		try {
			ps = con.prepareStatement("select * from tbl_customer_tja58 where CustomerId=?");
			ps.setString(1, custId);
			rs = ps.executeQuery();
			while (rs.next()) {
				cust.setCustomerId(rs.getString(1));
				cust.setStatus(rs.getString(2));
				cust.setSsnId(rs.getLong(3));
				cust.setCustomerName(rs.getString(4));
				cust.setAge(rs.getInt(5));
				cust.setAddressLine1(rs.getString(6));
				cust.setAddressLine2(rs.getString(7));
				cust.setCity(rs.getString(8));
				cust.setState(rs.getString(9));

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return cust;

	}

	public static int updateStatus(String custId) {
		int i = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement ps;
		ResultSet rs;
		int j = 0;

		try {
			ps = con.prepareStatement("select Status from tbl_customer_tja58 where CustomerId=? ");
			ps.setString(1, custId);
			rs = ps.executeQuery();
			while (rs.next()) {
				String status = rs.getString(1);
				if (status.equalsIgnoreCase("active")) {
					ps = con.prepareStatement("update tbl_customer_tja58 set Status='inactive'where CustomerId=?");
					ps.setString(1, custId);
					i = ps.executeUpdate();
					ps = con.prepareStatement("update tbl_login_tja58 set Status='inactive'where userId=?");
					ps.setString(1, custId);
					j = ps.executeUpdate();
				} else if (status.equalsIgnoreCase("inactive")) {
					ps = con.prepareStatement("update tbl_customer_tja58 set Status='active'where CustomerId=?");
					ps.setString(1, custId);
					i = ps.executeUpdate();
					ps = con.prepareStatement("update tbl_login_tja58 set Status='active'where userId=?");
					ps.setString(1, custId);
					j = ps.executeUpdate();
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(i + "" + j);
		if (i > 0 )
			return 1;
		else
			return 0;
	}

	public static int securityAnswers(String custId, String qno,
			String secureAns, String pswd) {
		int i = 0;
		Connection con = DBUtil.getConnection();
		PreparedStatement ps;
		ResultSet rs;
		try {
			ps = con.prepareStatement("select CustomerId from tbl_security_tja58");
			rs = ps.executeQuery();
			while (rs.next()) {
				if (rs.getString(1).equals(custId)) {
					i = -1;
				}
			}
			if (i != -1) {
				ps = con.prepareStatement("insert into tbl_security_tja58 values(?,?,?)");
				ps.setString(1, custId);
				ps.setString(2, qno);
				ps.setString(3, secureAns);
				i = ps.executeUpdate();
				ps = con.prepareStatement("update tbl_login_tja58 set password=? where userId=?");
				ps.setString(1, pswd);
				ps.setString(2, custId);
				i = ps.executeUpdate();
			}

			if (i > 0) {
				System.out.println("Answer inserted");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("" + i);

		return i;
	}

	public static int getAnswer(String custId, String qno, String securityAns) {
		String i = "";
		Connection con = DBUtil.getConnection();
		PreparedStatement ps;
		ResultSet rs;
		System.out.println("" + custId);
		try {
			ps = con.prepareStatement("select SecurityAns from tbl_security_tja58 where CustomerId =? and SecurityQno=?");
			ps.setString(1, custId);
			ps.setString(2, qno);
			rs = ps.executeQuery();
			while (rs.next()) {
				i = rs.getString(1);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("" + i);
		if (i.equalsIgnoreCase(securityAns)) {
			return 1;
		} else
			return 0;

	}

	public static int UpdatePassword(String id, String pwd) {
		Connection con = DBUtil.getConnection();
		PreparedStatement ps;

		int i = 0;
		try {
			ps = con.prepareStatement("update tbl_login_tja58 set password=? where userId=?");
			ps.setString(1, pwd);
			ps.setString(2, id);
			i = ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		if (i > 0) {
			return 1;
		} else {
			return 0;
		}

	}

	public static Employee ViewEmpProfile(String empId) {
		Employee e = new Employee();
		Connection con = DBUtil.getConnection();
		PreparedStatement ps;
		ResultSet rs;
		try {
			ps = con.prepareStatement("select * from tbl_employee_tja58 where EmpId=?");
			ps.setString(1, empId);
			rs = ps.executeQuery();
			while (rs.next()) {
				e.setEmpId(rs.getString(1));
				e.setEmpName(rs.getString(2));
				e.setDesignation(rs.getString(3));
				e.setEmailId(rs.getString(5));
				e.setContactNo(rs.getLong(4));

			}

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return e;

	}

	public static ArrayList<String> getcustomer() {
		Connection con = DBUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs;
		ArrayList<String> customerid = new ArrayList<String>();
		con = DBUtil.getConnection();
		try {
			ps = con.prepareStatement("select CustomerId from tbl_customer_tja58 ");
			rs = ps.executeQuery();
			while (rs.next()) {
				customerid.add(rs.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeStatement(ps);

			DBUtil.closeConnection(con);
		}

		return customerid;
	}

	public static String getEmpName(String userId) {
		String name = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement ps;
		ResultSet rs;
		try {
			ps = con.prepareStatement("select EmpName  from tbl_employee_tja58 where EmpId=?");
			ps.setString(1, userId);
			rs = ps.executeQuery();
			while (rs.next()) {

				name = rs.getString(1);

			}

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return name;

	}

	public static int UpdateEmpPassword(String id, String pwd) {
		Connection con = DBUtil.getConnection();
		PreparedStatement ps;

		int i = 0;
		try {
			ps = con.prepareStatement("update tbl_login_tja58 set password=? where userId=?");
			ps.setString(1, pwd);
			ps.setString(2, id);
			i = ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		if (i > 0) {
			return 1;
		} else {
			return 0;
		}

	}

}
