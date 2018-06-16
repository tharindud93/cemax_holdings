package com.cemax.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cemax.domain.Customer;
import com.cemax.service.CustomerService;



@Transactional
@Controller
public class customerController {
	@Autowired
	CustomerService customerService;
	
	@RequestMapping(value="addcustomer", method=RequestMethod.GET)
	 public ModelAndView addcustomer(@ModelAttribute("customer") Customer customer) {
		return new ModelAndView("/customer/addcoustomer","command",customer);
	 }
	@RequestMapping(value="addcustomerpro", method=RequestMethod.POST)
	 public ModelAndView addcustomerprocess(@ModelAttribute("customer") Customer customer) {
		try {
			Customer cus =customerService.getCustomerById(customer.getCid());
			//System.out.println("cusid"+cus.getCid());
			if(cus != null) {
				return new ModelAndView("redirect:" + "addcustomer?cusexist=true");
			} else {
				System.out.println("Awaaaa");
				customerService.addCustomer(customer);
				return new ModelAndView("redirect:" + "addcustomer?addsuccess=true");
			}
				
		} catch (Exception e) {
			return new ModelAndView("redirect:" + "addcustomer?error=true");
			}
		
	 }
	@RequestMapping(value="/viewcustomer")  
    public ModelAndView viewCustomer(HttpServletRequest request,Model model,Customer customer){  
        Customer scustomer=customerService.getCustomerById(request.getParameter("id"));
        System.out.println(request.getParameter("id"));
        model.addAttribute(scustomer);
        return new ModelAndView("/customer/viewcustomer","command",scustomer);  
    }
	
	   @RequestMapping(value="/editcustomer")  
	    public ModelAndView editCustomer(HttpServletRequest request,Model model,Customer customer){  
	        Customer scustomer=customerService.getCustomerById(request.getParameter("id"));
	        System.out.println(request.getParameter("id"));
	        model.addAttribute(scustomer);
	        return new ModelAndView("/customer/editcustomer","command",scustomer);  
	    } 
	   @RequestMapping(value="editcustomerpro", method=RequestMethod.POST)
		 public ModelAndView editcustomerprocess(@ModelAttribute("customer") Customer customer) {
		   try {
			   customerService.updateCustomer(customer);
				return new ModelAndView("redirect:" + "searchEditcustomer?updated=true");
		} catch (Exception e) {
			return new ModelAndView("redirect:" + "searchEditcustomer?error=true");
		}
			
	   }
	   
	@RequestMapping(value="searchEditcustomer", method=RequestMethod.GET)
	 public ModelAndView searchEditcustomer(@ModelAttribute("customer") Customer customer,Model model) {
		model.addAttribute("customers", customerService.Allcustomer());
		return new ModelAndView("/customer/searcheditcustomer","command",customer);
	 }
	
	 @RequestMapping(value = "/getCustomers", method = RequestMethod.GET)
		public @ResponseBody
		List<Customer> getCustomers(@RequestParam String cus, HttpServletRequest request,HttpServletResponse response) {

			List<Customer> result = new ArrayList<Customer>();
			Iterable<Customer> data = customerService.Allcustomer();
			
			for (Customer tag  : data) {
				if( tag.isActive()) {
				if (tag.getCid().contains(cus)||tag.getCname().contains(cus) ) {
					result.add(tag);
				}
				}
			}
			
			return result;
		}
}
