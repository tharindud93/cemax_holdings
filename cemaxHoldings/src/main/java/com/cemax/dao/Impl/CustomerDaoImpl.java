package com.cemax.dao.Impl;

import javax.management.Query;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cemax.dao.CustomerDao;
import com.cemax.domain.Customer;

@Repository("customerDao")
public class CustomerDaoImpl implements CustomerDao {

	@PersistenceContext
	private EntityManager entityManager;

	
	public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }


	public int addCustomer(Customer customer) {
		entityManager.persist(customer);
		return 0;
	}

	@Override
	public Customer getCustomerById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteCustomer(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateCustomer(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
}
	
	