package com.bean;

public class Customer {
	private String CustomerId;
	private String status;
	private long SsnId;
	private String CustomerName;	
	private int age;
	private String AddressLine1;
	private String AddressLine2 ;
	private String City;
	private String State;
	

	
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(String customerId, String Status, long ssnId,
			String customerName, int age, String addressLine1,
			String addressLine2, String city, String state) {
		super();
		CustomerId = customerId;
		status = Status;
		SsnId = ssnId;
		CustomerName = customerName;
		this.age = age;
		AddressLine1 = addressLine1;
		AddressLine2 = addressLine2;
		City = city;
		State = state;
		
	}
	public String getCustomerId() {
		return CustomerId;
	}
	public void setCustomerId(String customerId) {
		CustomerId = customerId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String Status) {
		status = Status;
	}
	public long getSsnId() {
		return SsnId;
	}
	public void setSsnId(long ssnId) {
		SsnId = ssnId;
	}
	public String getCustomerName() {
		return CustomerName;
	}
	public void setCustomerName(String customerName) {
		CustomerName = customerName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddressLine1() {
		return AddressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		AddressLine1 = addressLine1;
	}
	public String getAddressLine2() {
		return AddressLine2;
	}
	public void setAddressLine2(String addressLine2) {
		AddressLine2 = addressLine2;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	

}
