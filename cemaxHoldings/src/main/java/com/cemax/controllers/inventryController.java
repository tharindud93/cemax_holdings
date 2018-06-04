package com.cemax.controllers;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cemax.domain.Customer;
import com.cemax.domain.DailyInventry;
import com.cemax.domain.Invoice;
import com.cemax.service.InventryService;
import com.cemax.service.InvoiceService;

@Controller
public class inventryController {
	
	
	@Autowired
	InventryService inventryService;
	@Autowired
	InvoiceService invoiceService;

	@RequestMapping(value="dinventry" ,method=RequestMethod.GET)
	public ModelAndView dailyinventry(@ModelAttribute("dailyInventry") DailyInventry dailyInventry) {
		//inventryService.getinvbytoday();
		return new ModelAndView("/inventry/DinvUpdate","command",dailyInventry);
	}
	
	@RequestMapping(value="dinventrypro" ,method=RequestMethod.POST)
	public ModelAndView dailyinventrypro(@ModelAttribute("dailyInventry") DailyInventry dailyInventry) {
		inventryService.adddinventry(dailyInventry);
		return new ModelAndView("redirect:"+"dinventry?success=true");
	}
	
	@RequestMapping(value="serinventry" ,method=RequestMethod.GET)
	public String serinventry(Model model) {
		model.addAttribute("inventries",inventryService.AllINventrys());
		//inventryService.getinvbytoday();
		return "/inventry/Dinvviewserch";
	}
	@RequestMapping(value="viewinventry" ,method=RequestMethod.GET)
	public ModelAndView viewinventry(HttpServletRequest request,Model model,DailyInventry inventry) {
		DailyInventry inv=inventryService.getinvbyday(request.getParameter("date"));
		System.out.println(request.getParameter("date"));
		model.addAttribute(inv);
		return new ModelAndView("/inventry/ViewDinventry","command",inv); 	
	}
	 @RequestMapping(value = "/getInventrys", method = RequestMethod.GET)
		public @ResponseBody
		List<DailyInventry> getInventrys(@RequestParam String invid, HttpServletRequest request,HttpServletResponse response) {

			List<DailyInventry> result = new ArrayList<DailyInventry>();
			List<DailyInventry> data = inventryService.AllINventrys();
			
			for (DailyInventry tag  : data) {
				if (tag.getDate().contains(invid)) {
					result.add(tag);
				}
			}
			
			return result;
		}
	
	@RequestMapping("dsum")
	public String dailysummry() {
		return "Dsum";
	}
	
/*	@RequestMapping(value = "/gettodayinv", method = RequestMethod.GET)
	public @ResponseBody
	List<Invoice> gettodayInv(@RequestParam String invoid, HttpServletRequest request,HttpServletResponse response) {

		List<Invoice> result = new ArrayList<Invoice>();
		List<Invoice> data = invoiceService.todayInvoices();
		
		for (Invoice tag  : data) {
			if (tag.getDate().contains(invoid)) {
				result.add(tag);
			}
		}
		
		return result;
	}*/
}
