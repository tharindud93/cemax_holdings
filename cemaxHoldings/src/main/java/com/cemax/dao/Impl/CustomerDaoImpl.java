package com.cemax.dao.Impl;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


import org.springframework.stereotype.Repository;

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
	public Customer getCustomerById(String id) {
		Customer customer;
		customer=entityManager.find(Customer.class, id);
		//customer=(Customer) entityManager.createQuery("SELECT c FROM customer c WHERE c.id=:cid AND c.active=1").setParameter("cid", id).getSingleResult();
		return customer;
	}

	@Override
	public int deleteCustomer(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateCustomer(Customer cu) {
		Customer customer=entityManager.find(Customer.class,cu.getCid());
		customer.setActive(cu.isActive());
		customer.setArea(cu.getArea());
		customer.setCaddress(cu.getCaddress());
		customer.setCcno1(cu.getCcno1());
		customer.setCcno2(cu.getCcno2());
		customer.setCname(cu.getCname());
		customer.setOwaddress(cu.getOwaddress());
		customer.setOwcno(cu.getOwcno());
		customer.setOwname(cu.getOwname());
		return 0;
	}


	@Override
	public Iterable<Customer> Allcustomer() {
		Iterable<Customer> customers;
		customers=entityManager.createQuery("SELECT c FROM customer C").getResultList();
		return customers;
	}
	
}
	
	