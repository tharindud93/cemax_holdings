package com.cemax.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cemax.domain.User;



@Controller
public class userController {
	@RequestMapping(value="adduser", method=RequestMethod.GET)
	 public ModelAndView adduser(@ModelAttribute("user") User user) {
		return new ModelAndView("adduser","command",user);
	 }
}
