package com.cemax.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class allcreditsController {
	
	
	@RequestMapping("allcredits")
	public String allcr() {
		return "allcredits";
	}

}



