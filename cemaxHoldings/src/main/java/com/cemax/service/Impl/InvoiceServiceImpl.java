package com.cemax.service.Impl;

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

}
