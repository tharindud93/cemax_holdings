package com.cemax.dao;

import com.cemax.domain.Customer;

public interface CustomerDao {

	public int addCustomer(Customer customer);
	public Customer getCustomerById(int id);
	public int deleteCustomer(int id);
	public int updateCustomer(int id);
	
}
