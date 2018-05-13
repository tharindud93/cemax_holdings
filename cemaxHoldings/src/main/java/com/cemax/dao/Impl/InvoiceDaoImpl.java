package com.cemax.dao.Impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cemax.dao.InvoiceDao;
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

}
