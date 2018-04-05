package com.cemax.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class inventryController {

	@RequestMapping("dinventry")
	public String dailyinventryup() {
		return "DinvUpdate";
	}
	
	@RequestMapping("dsum")
	public String dailysummry() {
		return "Dsum";
	}
}
