package com.cemax.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class disInvoicesController {

	
	@RequestMapping("displayinvoices")
	public String displayinvoicesadd() {
		return "disInvoices";
	}
}
