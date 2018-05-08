package com.cemax.controllers;

import javax.persistence.NoResultException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cemax.domain.DailyInventry;
import com.cemax.domain.Invoice;
import com.cemax.service.InventryService;
import com.cemax.service.InvoiceService;
@Transactional
@Controller
public class invoiceController {
	
	@Autowired
	InventryService inventryService;
	@Autowired
	InvoiceService invoiceService;


	@RequestMapping(value="invoice", method=RequestMethod.GET)
	public ModelAndView invoiceadd(@ModelAttribute("invoice") Invoice invoice,Model model) {
		//try {
		DailyInventry inv=inventryService.getinvbytoday();
		System.out.println(inv.getOpcmargin());
		System.out.println(inv.getPpcmargin());

		model.addAttribute("inventry",inv);

		return new ModelAndView("/invoice/invoice","command",invoice);
		/*} catch (NoResultException e) {

			
			return new ModelAndView("/invoice/invoice","command",invoice);
		}*/
	}
	
	@RequestMapping(value="error")
	public ModelAndView error() {
		return new ModelAndView("/invoice/error") ;
		
	}
	@RequestMapping(value="addinvoicepro",method=RequestMethod.POST)
	public ModelAndView addinvpro(@ModelAttribute("invoice") Invoice invoice) {
		invoiceService.addInvoice(invoice);
		
		return new ModelAndView("redirect:"+"invoice?success=true");	
	}
	
	
/*	@RequestMapping("delnote")
	public String adddelnote() {
		return "delNote";
	}
	@RequestMapping("secus")
	public String secus() {
		return "/invoice/SerCustomerModal";
	}*/
	
	
	@RequestMapping("allinv")
	public String allinvoices() {
		return "/invoice/allinvoices";
		
	}
	@RequestMapping("viewinv")
	public String viewinvoice() {
		return "invoice/viewinvoice";
	}
	@RequestMapping("debauth")
	public String authdebit() {
		return "invoice/debitauth";
	}
}
