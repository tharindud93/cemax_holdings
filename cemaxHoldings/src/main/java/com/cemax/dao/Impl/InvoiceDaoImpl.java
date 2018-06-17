package com.cemax.dao.Impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cemax.dao.InvoiceDao;
import com.cemax.domain.Customer;
import com.cemax.domain.DailyInventry;
import com.cemax.domain.Invoice;
import com.cemax.domain.StartFlag;

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
		invoices=entityManager.createQuery("SELECT c FROM invoice c ORDER BY c.remaindays").getResultList();
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
		return 1;
	}

	@Override
	public int updateRemaindays(Invoice inv) {
	//	LastDay lastday=(LastDay) entityManager.createQuery("SELECT c FROM lastday c");
		String date=inv.getDate();
		try {
			Date createddate=sdf.parse(date);
			Date now=sdf.parse(today);
			
			int diffInMillies =(int) (now.getTime() - createddate.getTime());
			int diff = (int) TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
			inv.setRemaindays(inv.getRemaindays()-diff);
			entityManager.merge(inv);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	return 1;	
	}

	@Override
	public String getflag() {
		StartFlag flag= (StartFlag) entityManager.createQuery("SELECT c FROM startflag c").getSingleResult();
		return flag.getFlag();
	}

	@Override
	public void updateflag() {
		StartFlag flag = (StartFlag) entityManager.createQuery("SELECT c FROM startflag c").getSingleResult();
		flag.setFlag(today);
		entityManager.merge(flag);
	}
}