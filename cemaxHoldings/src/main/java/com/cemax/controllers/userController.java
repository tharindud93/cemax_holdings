package com.cemax.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cemax.domain.User;
import com.cemax.service.UserService;
@Transactional
@Controller
public class userController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="adduser", method=RequestMethod.GET)
	 public ModelAndView adduser(@ModelAttribute("user") User user) {
		return new ModelAndView("adduser","command",user);
	 }
	
	@RequestMapping(value="adduserpro", method=RequestMethod.POST)
	 public ModelAndView adduserpro(@ModelAttribute("user") User user) {
		userService.addUser(user);
		return new ModelAndView("redirect:"+"adduser?addsuccess=true");
	 }
}
