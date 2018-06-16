package com.cemax.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cemax.dao.InvoiceDao;
import com.cemax.domain.Invoice;
import com.cemax.service.InvoiceService;

@Service("invoiceService")
@Transactional
@Scope(value="singleton",proxyMode=ScopedProxyMode.TARGET_CLASS)
public class InvoiceServiceImpl implements InvoiceService{

	@Autowired
	InvoiceDao invoiceDao;
	
	@Override
	public int addInvoice(Invoice invoice) {
		return invoiceDao.addInvoice(invoice);
	}

	@Override
	public List<Invoice> AllInvoices() {
		return invoiceDao.AllInvoices();
	}

	@Override
	public Invoice getInvById(String id) {
		return invoiceDao.getInvById(id);
	
	}

	@Override
	public List<Invoice> todayInvoices() {
		return invoiceDao.todayInvoices();
	}

	@Override
	public int updateRemain(int opcremain, int ppcremain) {
		return invoiceDao.updateRemain(opcremain,ppcremain);
	}

	@Override
	public int updateRemain(Invoice inv) {
		return invoiceDao.updateRemaindays(inv);
	}

	@Override
	public String getflag() {
		return invoiceDao.getflag();
		
	}

	@Override
	public void updateflag() {
		invoiceDao.updateflag();
		
	}

	
	
	

}
