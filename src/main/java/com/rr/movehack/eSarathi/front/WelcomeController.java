package com.rr.movehack.eSarathi.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {

	@RequestMapping("/")
	public String index() {
		return "login";
	}
	
	@RequestMapping("/signuppage")
	public String signup() {
		return "signup";
	}

	@RequestMapping("/loginpage")
	public String login() {
		return "login";
	}

	@RequestMapping("/logoutpage")
	public String logout() {
		return "logout";
	}

	@RequestMapping("/{path}")
	public String path(@PathVariable("path") String path) {
		return path;
	}
	
/*
	@RequestMapping("/statement")
	public String statement() {
		return "statement";
	}*/
	

}
