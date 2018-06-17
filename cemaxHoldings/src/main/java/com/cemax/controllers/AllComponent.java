package com.cemax.controllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;

import org.apache.taglibs.standard.tag.common.xml.IfTag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cemax.domain.Customer;
import com.cemax.domain.Invoice;
import com.cemax.service.CustomerService;
import com.cemax.service.InvoiceService;

@Component
public class AllComponent {
	
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	public String today=sdf.format(new Date());
	
	@Autowired
	InvoiceService invoiceService;
	@Autowired
	CustomerService customerService;
	
	@PostConstruct
	public void remainUpdate() {
		String flagday=invoiceService.getflag();
		if(!flagday.equals(today)) {
			
		Iterable<Invoice> data = invoiceService.AllInvoices();
		for (Invoice tag  : data) {
			invoiceService.updateRemain(tag);
			if(tag.getRemaindays()<=0) {
				System.out.println("inactive come"+tag.getCusid());
				customerService.inactiveCustomer(tag);
				System.out.println("inactive finfished");
			}
			}
		invoiceService.updateflag();
	}
	}
}
