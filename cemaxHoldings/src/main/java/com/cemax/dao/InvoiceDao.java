package com.cemax.dao;

import java.util.List;

import com.cemax.domain.Invoice;

public interface InvoiceDao {

	public int addInvoice(Invoice invoice);
	public List<Invoice> AllInvoices();
}
