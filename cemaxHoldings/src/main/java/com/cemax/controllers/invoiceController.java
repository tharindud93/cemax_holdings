package com.cemax.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class invoiceController {

	@RequestMapping("invoice")
	public String invoiceadd() {
		return "invoice";
	}
	@RequestMapping("delnote")
	public String adddelnote() {
		return "delNote";
	}
	@RequestMapping("allinv")
	public String allinvoices() {
		return "allinvoices";
		
	}
	@RequestMapping("viewinv")
	public String viewinvoice() {
		return "viewinvoice";
	}
}
