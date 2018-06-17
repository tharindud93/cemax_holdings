package com.cemax.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cemax.dao.CustomerDao;
import com.cemax.domain.Customer;
import com.cemax.domain.Invoice;
import com.cemax.service.CustomerService;
import org.springframework.context.annotation.ScopedProxyMode;

@Service("customerService")
@Transactional
@Scope(value="singleton",proxyMode=ScopedProxyMode.TARGET_CLASS)
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDao customerdao;

	@Override
	public int addCustomer(Customer customer) {
		return customerdao.addCustomer(customer);
	}

	@Override
	public Customer getCustomerById(String id) {
		return customerdao.getCustomerById(id);
	}

	@Override
	public int deleteCustomer(String id) {
		return customerdao.deleteCustomer(id);
	}

	@Override
	public int updateCustomer(Customer customer) {
		return customerdao.updateCustomer(customer);
	}

	@Override
	public Iterable<Customer> Allcustomer() {
		return customerdao.Allcustomer();
	}

	@Override
	public void inactiveCustomer(Invoice tag) {
		customerdao.inactiveCustomer(tag);
		
	}
	
	
}
