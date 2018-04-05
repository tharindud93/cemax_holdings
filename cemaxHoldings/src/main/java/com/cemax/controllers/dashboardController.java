package com.cemax.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class dashboardController {

	
	
	@RequestMapping("dashboard")
	public String dashboard() {
		return "dashboard";
	}
}
