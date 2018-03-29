package com.cemax.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class cusLogController {
	
	
	@RequestMapping("customerlog")
	public String allcr() {
		return "cusLog";
	}

}
