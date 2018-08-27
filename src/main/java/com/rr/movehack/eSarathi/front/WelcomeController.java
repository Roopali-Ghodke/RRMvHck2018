package com.rr.movehack.eSarathi.front;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rr.movehack.eSarathi.data.UserCardDao;
import com.rr.movehack.eSarathi.data.model.CardStatement;

@Controller
public class WelcomeController {
	private static final Logger LOGGER = LogManager.getLogger(WelcomeController.class);

	@Autowired
	private UserCardDao userCardDao;

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
	

	@RequestMapping("/profile.do")
	public ModelAndView profile() {

		ModelAndView modelAndView = new ModelAndView("profile");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Map<String, Object> userProfile = userCardDao.getUserData(auth.getName());
		LOGGER.debug("User Profile = " + userProfile);
		modelAndView.addObject("userProfile", userProfile);
		return modelAndView;

	}

}
