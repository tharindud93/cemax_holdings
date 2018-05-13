package com.cemax.dao;

import java.util.List;

import com.cemax.domain.Customer;

public interface CustomerDao {

	public int addCustomer(Customer customer);
	public Customer getCustomerById(String id);
	public int deleteCustomer(String id);
	public int updateCustomer(Customer customer);
	public Iterable<Customer> Allcustomer(); 
	
}
