package com.cemax.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cemax.domain.Customer;


@Controller
public class customerController {
	@RequestMapping(value="addcustomer", method=RequestMethod.GET)
	 public ModelAndView addcustomer(@ModelAttribute("customer") Customer customer) {
		return new ModelAndView("addcoustomer","command",customer);
	 }
}
