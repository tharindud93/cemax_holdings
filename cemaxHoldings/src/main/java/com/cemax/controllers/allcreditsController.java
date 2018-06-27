package com.cemax.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cemax.domain.Invoice;
import com.cemax.service.InvoiceService;


@Controller
public class allcreditsController {
	
	@Autowired
	InvoiceService invoiceservice;
	
	@RequestMapping("allcredits")
	public String allcr(Model model) {
		model.addAttribute("asd",invoiceservice.SumInvoicesByCustomer());
		return "allcredits";
	}
	
	@RequestMapping("customersum")
	public String outmod(Model model,HttpServletRequest request ) {
		String cusid=request.getParameter("cusid");
		String cname=request.getParameter("cname");
		model.addAttribute("invoices",invoiceservice.GetInvoiceByCustomer(cusid));
		model.addAttribute("cname", cname);
		model.addAttribute("cusid", cusid);
		return "customerSum";
	}
	
	@RequestMapping("deducepro")
	public String deducepro(HttpServletRequest request) {
		String cusid=request.getParameter("cusid");
		long amount=Integer.parseInt(request.getParameter("debamount"));
		List<Invoice> invoices=invoiceservice.GetInvoiceByCustomer(cusid);
		Invoice invoice = null;
		int i=0;
		while(amount>0) {
		invoice=invoices.get(i);
		System.out.println(invoice.getInvid());
		String invid=invoice.getInvid();
		long remain_amount=invoice.getRemain_amount();
		amount =amount-remain_amount;
		if(amount>=0) {
		System.out.println("amount iss"+amount);
		invoiceservice.updateRemainAmount(0, invid);
		i++;
		}else {
			System.out.println("amount iss"+amount);
			invoiceservice.updateRemainAmount(amount*(-1), invid);
		}
		}
		return "redirect:customersum?cusid="+invoice.getCusid()+"&cname=Saman+kumara+Hardware";
		
	}

}



