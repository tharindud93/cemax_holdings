package com.cemax.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cemax.domain.DailyInventry;
import com.cemax.domain.Invoice;
import com.cemax.service.InventryService;

@Controller
public class invoiceController {
	
	@Autowired
	InventryService inventryService;

	@RequestMapping(value="invoice", method=RequestMethod.GET)
	public ModelAndView invoiceadd(@ModelAttribute("invoice") Invoice invoice,Model model) {
		DailyInventry inv=inventryService.getinvbytoday();
		System.out.println(inv.getOpcmargin());
		System.out.println(inv.getPpcmargin());

		model.addAttribute("inventry",inv);

		return new ModelAndView("/invoice/invoice","command",invoice);
	}
	@RequestMapping("delnote")
	public String adddelnote() {
		return "delNote";
	}
	@RequestMapping("secus")
	public String secus() {
		return "/invoice/SerCustomerModal";
	}
	@RequestMapping("allinv")
	public String allinvoices() {
		return "allinvoices";
		
	}
	@RequestMapping("viewinv")
	public String viewinvoice() {
		return "viewinvoice";
	}
	@RequestMapping("debauth")
	public String authdebit() {
		return "debitauth";
	}
}
