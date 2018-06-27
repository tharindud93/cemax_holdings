package com.cemax.dao.Impl;

import java.io.Console;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

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
		List<Invoice> invoices2 = new ArrayList();
		invoices=entityManager.createQuery("select c from invoice c  where c.paid=false order by c.remaindays").getResultList();
		for(Invoice tag:invoices) {
			Customer cus=entityManager.find(Customer.class, tag.getCusid());
			tag.setCname(cus.getCname());
			invoices2.add(tag);
		}
		return invoices2;
	}
	
	@Override
	public List<Invoice> paidAllInvoices() {
		List<Invoice> invoices;
		List<Invoice> invoices2 = new ArrayList();
		invoices=entityManager.createQuery("select c from invoice c  where c.paid=true order by c.remaindays").getResultList();
		for(Invoice tag:invoices) {
			Customer cus=entityManager.find(Customer.class, tag.getCusid());
			tag.setCname(cus.getCname());
			invoices2.add(tag);
		}
		return invoices2;
	}

	@Override
	public List<Object[]> SumInvoicesByCustomer() {
		String qlString = "SELECT sum(x.remain_amount),x.cusid,y.cname FROM invoice x,customer y where x.cusid=y.cid group by x.cusid";
		Query q = entityManager.createQuery(qlString);
		List<Object[]> results =q.getResultList() ;
		return results;
	}
	
//SELECT c.invid,c.cusid,c.date,c.duration,c.remaindays,d.cid,d.cname FROM invoice c,customer d WHERE c.cusid=d.cid
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
		String lastday=  (String) entityManager.createQuery("SELECT c.flag FROM startflag c").getSingleResult();
		String date=inv.getDate();
		try {
			Date lsday=sdf.parse(lastday);
			Date now=sdf.parse(today);
			
			int diffInMillies =(int) (now.getTime() - lsday.getTime());
			int diff = (int) TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
			System.out.println("daydiffrent======="+diff);
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

	@Override
	public List<Invoice> getInvoiceByCustomer(String cusid) {
		String qlString = "SELECT x FROM invoice x where x.cusid=:id and x.paid=false";
		Query q = entityManager.createQuery(qlString);
		List<Invoice> results =q.setParameter("id", cusid).getResultList() ;
		return results;
	}

	@Override
	public int updateRemainAmount(long remain_amount,String invid,boolean paid) {
		Invoice invoice=entityManager.find(Invoice.class, invid);
		invoice.setPaid_amount(invoice.getPaid_amount()+invoice.getRemain_amount()-remain_amount);
		invoice.setRemain_amount(remain_amount);
		invoice.setPaid(paid);
		entityManager.merge(invoice);
		return 1;
	}

}