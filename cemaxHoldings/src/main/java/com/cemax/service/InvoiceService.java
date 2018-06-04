package com.cemax.service;

import java.util.List;

import com.cemax.domain.Invoice;

public interface InvoiceService {
	public int addInvoice(Invoice invoice);
	public List<Invoice> AllInvoices();
	public Invoice getInvById(String id);
	public List<Invoice> todayInvoices();

}
