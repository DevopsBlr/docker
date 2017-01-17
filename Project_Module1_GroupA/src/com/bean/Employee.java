package com.bean;

public class Employee {
private String empId;
 private String empName;
 private String Designation;
 private long contactNo;
 private String emailId;
public Employee() {
	super();
}
public Employee(String empId, String empName, String designation,
		long contactNo, String emailId) {
	super();
	this.empId = empId;
	this.empName = empName;
	Designation = designation;
	this.contactNo = contactNo;
	this.emailId = emailId;
}
public String getEmpId() {
	return empId;
}
public void setEmpId(String empId) {
	this.empId = empId;
}
public String getEmpName() {
	return empName;
}
public void setEmpName(String empName) {
	this.empName = empName;
}
public String getDesignation() {
	return Designation;
}
public void setDesignation(String designation) {
	Designation = designation;
}
public long getContactNo() {
	return contactNo;
}
public void setContactNo(long contactNo) {
	this.contactNo = contactNo;
}
public String getEmailId() {
	return emailId;
}
public void setEmailId(String emailId) {
	this.emailId = emailId;
}
 
 

}
