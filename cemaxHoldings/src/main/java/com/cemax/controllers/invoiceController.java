package com.cemax.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class invoiceController {

	@RequestMapping("invoice")
	public String invoiceadd() {
		return "invoce";
	}
}
