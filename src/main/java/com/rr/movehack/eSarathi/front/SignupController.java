package com.rr.movehack.eSarathi.front;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rr.movehack.eSarathi.data.StatementDao;
import com.rr.movehack.eSarathi.data.UserCardDao;
import com.rr.movehack.eSarathi.data.model.User;
import com.rr.movehack.eSarathi.front.model.TopupCommand;

@Controller
public class SignupController {

	private static final Logger LOGGER = LogManager.getLogger(SignupController.class);

	@Autowired
	private UserCardDao userCardDao;

	@RequestMapping(value = "/signup.do", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("signup", "command", new User());
	}

	@RequestMapping("/signupuser")
	public ModelAndView signupuser(@ModelAttribute("command") User command) {
		LOGGER.info("Creating user... = " + command);
		ModelAndView mav = new ModelAndView("signup", "command", new User());

		userCardDao.createUser(command);
		mav.addObject("status", "success");
		return mav;
	}
}
