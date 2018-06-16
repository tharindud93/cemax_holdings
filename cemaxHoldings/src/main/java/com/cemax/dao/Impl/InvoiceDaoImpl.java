package com.cemax.dao.Impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cemax.dao.InvoiceDao;
import com.cemax.domain.Customer;
import com.cemax.domain.DailyInventry;
import com.cemax.domain.Invoice;

@Repository("invoiceDao")
public class InvoiceDaoImpl implements InvoiceDao{
	
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	String today=sdf.format(new Date());
	@PersistenceContext
	private EntityManager entityManager;

	
	public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

	@Override
	public int addInvoice(Invoice invoice) {
		entityManager.persist(invoice);
		return 0;
	}

	@Override
	public List<Invoice> AllInvoices() {
		List<Invoice> invoices;
		invoices=entityManager.createQuery("SELECT c FROM invoice c ORDER BY c.duration").getResultList();
		return invoices;
	}

	@Override
	public Invoice getInvById(String id) {
		Invoice invoice;
		invoice=entityManager.find(Invoice.class, id);
		return invoice;
	}

	@Override
	public List<Invoice> todayInvoices() {
		List<Invoice> invoices;
		invoices=entityManager.createQuery("SELECT c FROM invoice c WHERE  c.date=:today").setParameter("today", today).getResultList();
		return invoices;
	}


	@Override
	public int updateRemain(int opcremain, int ppcremain) {
		DailyInventry inventry=(DailyInventry) entityManager.createQuery("SELECT c FROM dinventry c WHERE c.date=:today").setParameter("today",today).getSingleResult();
		inventry.setOpcremain(opcremain);
		inventry.setPpcremain(ppcremain);
		return 0;
	}
}