package com.bhumika.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Customer 
{
@Id
private int custNo;
private String custName;
private String custMob;
private String custCity;
private float custBalance;

@Override
public String toString() {
	return "Customer [custNo=" + custNo + ", custName=" + custName + ", custMob=" + custMob + ", custCity=" + custCity
			+ ", custBalance=" + custBalance + "]";
}
public Customer() {
	super();
	// TODO Auto-generated constructor stub
}
public Customer(int custNo, String custName, String custMob, String custCity, float custBalance) {
	super();
	this.custNo = custNo;
	this.custName = custName;
	this.custMob = custMob;
	this.custCity = custCity;
	this.custBalance = custBalance;
}
public int getCustNo() {
	return custNo;
}
public void setCustNo(int custNo) {
	this.custNo = custNo;
}
public String getCustName() {
	return custName;
}
public void setCustName(String custName) {
	this.custName = custName;
}
public String getCustMob() {
	return custMob;
}
public void setCustMob(String custMob) {
	this.custMob = custMob;
}
public String getCustCity() {
	return custCity;
}
public void setCustCity(String custCity) {
	this.custCity = custCity;
}
public float getCustBalance() {
	return custBalance;
}
public void setCustBalance(float custBalance) {
	this.custBalance = custBalance;
}






}
