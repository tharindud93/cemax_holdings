package com.cemax.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cemax.domain.Customer;
import com.cemax.service.CustomerService;

@Controller
public class customerController {
	
	 @Autowired
	 CustomerService customerService;
	
	@RequestMapping(value="addcustomer", method=RequestMethod.GET)
	 public ModelAndView addcustomer(@ModelAttribute("customer") Customer customer) {
		return new ModelAndView("addcoustomer","command",customer);
	 }
	@RequestMapping(value="addcustomerprocess",method=RequestMethod.POST)
	public ModelAndView addcustomerprocess(@ModelAttribute("customer") Customer customer ,Model m) {
		//customer.setArea("asdddddddddd");
		customerService.addCustomer(customer);
		return new ModelAndView("redirect:" + "addcustomer?success=true");
		
	}
}
