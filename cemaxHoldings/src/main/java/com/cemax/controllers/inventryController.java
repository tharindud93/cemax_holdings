package com.cemax.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cemax.domain.DailyInventry;
import com.cemax.service.InventryService;

@Controller
public class inventryController {
	
	
	@Autowired
	InventryService inventryService;

	@RequestMapping(value="dinventry" ,method=RequestMethod.GET)
	public ModelAndView dailyinventry(@ModelAttribute("dailyInventry") DailyInventry dailyInventry) {
		//inventryService.getinvbytoday();
		return new ModelAndView("/inventry/DinvUpdate","command",dailyInventry);
	}
	
	@RequestMapping(value="dinventrypro" ,method=RequestMethod.POST)
	public ModelAndView dailyinventrypro(@ModelAttribute("dailyInventry") DailyInventry dailyInventry) {
		inventryService.adddinventry(dailyInventry);
		return new ModelAndView("redirect:"+"dinventry?success=true");
	}
	
	@RequestMapping("dsum")
	public String dailysummry() {
		return "Dsum";
	}
}
