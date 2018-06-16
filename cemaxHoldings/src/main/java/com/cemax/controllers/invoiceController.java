package com.cemax.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cemax.domain.Customer;
import com.cemax.domain.DailyInventry;
import com.cemax.domain.Invoice;
import com.cemax.service.CustomerService;
import com.cemax.service.InventryService;
import com.cemax.service.InvoiceService;
@Transactional
@Controller
public class invoiceController {
	
	@Autowired
	InventryService inventryService;
	@Autowired
	InvoiceService invoiceService;
	@Autowired
	CustomerService customerService;


	@GetMapping(value="invoice")
	public ModelAndView invoiceadd(@ModelAttribute("invoice") Invoice invoice,Model model) {
		try {
		DailyInventry inv=inventryService.getinvbytoday();
		model.addAttribute("inventry",inv);

		return new ModelAndView("/invoice/invoice","command",invoice);
		} catch (NoResultException e) {
			System.out.println(e);
			return new ModelAndView("/invoice/error");
		}
	}
	
	@RequestMapping(value="error")
	public ModelAndView error() {
		return new ModelAndView("/invoice/error") ;
		
	}
	@RequestMapping(value="addinvoicepro",method=RequestMethod.POST)
	public ModelAndView addinvpro(@ModelAttribute("invoice") Invoice invoice) {
		invoice.setRemaindays(invoice.getDuration());
		invoiceService.addInvoice(invoice);
		int opcremain=invoice.getOpcremain();
		int ppcremain=invoice.getPpcremain();
		System.out.println(opcremain);
		System.out.println(ppcremain);
		invoiceService.updateRemain(opcremain,ppcremain);
		
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
	public ModelAndView allinvoices(@ModelAttribute("invoice") Invoice invoice,Model model ) {
		model.addAttribute("invoices",invoiceService.AllInvoices());
		return new ModelAndView("/invoice/allinvoices","command",invoice);
		
	}
	 @RequestMapping(value = "/getInvoices", method = RequestMethod.GET)
		public @ResponseBody
		List<Invoice> getInvoises(@RequestParam String invid, HttpServletRequest request,HttpServletResponse response) {

			List<Invoice> result = new ArrayList<Invoice>();
			List<Invoice> data = invoiceService.AllInvoices();
			
			for (Invoice tag  : data) {
				if (tag.getInvid().contains(invid)) {
					result.add(tag);
				}
			}
			
			return result;
		}
	
	
	@RequestMapping("viewinv")
	public ModelAndView viewinvoice(HttpServletRequest request,Model model,Invoice invoice) {
		invoice=invoiceService.getInvById(request.getParameter("id"));
		System.out.println(request.getParameter("id"));

		//Customer cus =customerService.getCustomerById(cid); 
		//System.out.println(cus.getCname());
		//model.addAttribute("cname",cus);
		model.addAttribute("invoice",invoice);
		DailyInventry inventry =inventryService.getinvbytoday();
		model.addAttribute("inventry",inventry);
		return new ModelAndView("invoice/viewinvoice","command",invoice);
	}
	@RequestMapping("debauth")
	public String authdebit() {
		return "invoice/debitauth";
	}
}
