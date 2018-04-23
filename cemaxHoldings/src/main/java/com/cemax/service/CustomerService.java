package com.cemax.service;

import com.cemax.domain.Customer;

public interface CustomerService {

	public int addCustomer(Customer customer);
	public Customer getCustomerById(int id);
	public int deleteCustomer(int id);
	public int updateCustomer(int id);
}
