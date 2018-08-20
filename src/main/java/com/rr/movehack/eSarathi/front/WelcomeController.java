package com.rr.movehack.eSarathi.front;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WelcomeController {

	@RequestMapping("/")
	public String index() {
		return "welcome";
	}

	@RequestMapping("/loginpage")
	public String login() {
		return "login";
	}

	@RequestMapping("/logoutpage")
	public String logout() {
		return "logout";
	}

	@RequestMapping("/statement")
	public String statement() {
		return "statement";
	}

}
