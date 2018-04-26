package com.cemax.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cemax.dao.CustomerDao;
import com.cemax.domain.Customer;
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
	public Customer getCustomerById(int id) {
		return customerdao.getCustomerById(id);
	}

	@Override
	public int deleteCustomer(int id) {
		return customerdao.deleteCustomer(id);
	}

	@Override
	public int updateCustomer(int id) {
		return customerdao.updateCustomer(id);
	}
	
	
}
