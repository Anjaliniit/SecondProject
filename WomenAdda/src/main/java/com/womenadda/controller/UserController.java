package com.womenadda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@RequestMapping("/")
	public ModelAndView homePage()
	{
		return new ModelAndView("index");		
	}
	
	@RequestMapping("/login")
	public ModelAndView loginPage()
	{
		return new ModelAndView("login");		
	}
	
	@RequestMapping("/registerPage")
	public ModelAndView registerPage()
	{
		return new ModelAndView("register");		
	}
	@RequestMapping("/register")
	public ModelAndView register()
	{
		return new ModelAndView("register");		
	}
	
}
