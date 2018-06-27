package com.cemax.service;

import java.util.List;

import com.cemax.domain.Invoice;

public interface InvoiceService {
	public int addInvoice(Invoice invoice);
	public List<Invoice> AllInvoices();
	public Invoice getInvById(String id);
	public List<Invoice> todayInvoices();
	public int updateRemain(int opcremain,int ppcremain);
	public int updateRemaindays(Invoice inv);
	public String getflag();
	public void updateflag();
	public List<Object[]> SumInvoicesByCustomer();
	public List<Invoice> GetInvoiceByCustomer(String cusid);
	int updateRemainAmount(long remain_amount,String invid,boolean paid);
	public List<Invoice> paidAllInvoices();
}
