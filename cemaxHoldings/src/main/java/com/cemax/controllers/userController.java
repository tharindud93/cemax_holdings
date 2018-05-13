package com.cemax.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cemax.domain.Customer;
import com.cemax.domain.User;
import com.cemax.service.UserService;
@Transactional
@Controller
public class userController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="adduser", method=RequestMethod.GET)
	 public ModelAndView adduser(@ModelAttribute("user") User user) {
		return new ModelAndView("/user/adduser","command",user);
	 }
	
	@RequestMapping(value="adduserpro", method=RequestMethod.POST)
	 public ModelAndView adduserpro(@ModelAttribute("user") User user) {
		try {
			User usr =userService.getUserById(user.getUserid());
			//System.out.println("cusid"+cus.getCid());
			if(usr != null) {
				return new ModelAndView("redirect:" + "adduserr?userxist=true");
			} else {
				userService.addUser(user);
				return new ModelAndView("redirect:"+"adduser?addsuccess=true");
			}
				
		} catch (Exception e) {
			return new ModelAndView("redirect:" + "adduser?error=true");
			}
		
	 }
	
	   @RequestMapping(value="/edituser")  
	    public ModelAndView edituser(HttpServletRequest request,Model model,User user){  
	        User suser=userService.getUserById(request.getParameter("id"));
	        System.out.println(request.getParameter("id"));
	        model.addAttribute(suser);
	        return new ModelAndView("/user/edituser","command",suser);  
	    } 
	   @RequestMapping(value="edituserpro", method=RequestMethod.POST)
		 public ModelAndView edituserprocess(@ModelAttribute("user") User user) {
		   try {
			   userService.updateUser(user);
				return new ModelAndView("redirect:" + "searchEdituser?updated=true");
		} catch (Exception e) {
			return new ModelAndView("redirect:" + "searchEdituser?error=true");
		}
			
	   }
	@RequestMapping(value="searchEdituser", method=RequestMethod.GET)
	 public ModelAndView searchEdituser(@ModelAttribute("user") User user,Model model) {
		model.addAttribute("users",userService.allUsers());
		return new ModelAndView("/user/searchedituser","command",user);
	 }
	
	 @RequestMapping(value = "/getusers", method = RequestMethod.GET)
		public @ResponseBody
		List<User> getusers(@RequestParam String uid, HttpServletRequest request,HttpServletResponse response) {

			List<User> result = new ArrayList<User>();
			List<User> data = userService.allUsers();
			
			for (User tag  : data) {
				if (tag.getUserid().contains(uid)) {
					result.add(tag);
				}
			}
			
			return result;
		}

}
