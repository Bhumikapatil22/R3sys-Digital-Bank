package com.bhumika.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.bhumika.model.Customer;

@Component
public class CustomerDao 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int addCustomer(Customer customer) 
	{
		int i=(Integer)hibernateTemplate.save(customer);
		return i;
	}
	

	public Customer viewOneCustomer(int No) {
		Customer customer=hibernateTemplate.get(Customer.class, No);
		return customer;
	}
	

	public List<Customer> viewAllCustomer() {
		return hibernateTemplate.loadAll(Customer.class);
	
	}
	
	@Transactional
	public void deleteCustomer(int aNo) {
		Customer customer=hibernateTemplate.get(Customer.class,aNo);
		hibernateTemplate.delete(customer);
		
	}
	
	
	@Transactional
	public void depositeMoney(Customer viewCust) 
	{
		hibernateTemplate.update(viewCust);		
	}
	
	@Transactional
	public void withdrawMoney(Customer vcustomer) 
	{
		hibernateTemplate.update(vcustomer);					
	}
	@Transactional
	public void updateAll(Customer ucustomer) 
	{	
		hibernateTemplate.update(ucustomer);
	}

	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void deleteAccount(Customer customer)
	{
		hibernateTemplate.delete(customer);
	}

	@Transactional
	public void transferAmount(Customer customer)
	{
		hibernateTemplate.update(customer);
	}

	

	

	


	

	

	




}
