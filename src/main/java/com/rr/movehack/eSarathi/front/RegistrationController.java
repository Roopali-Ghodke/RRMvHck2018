package com.rr.movehack.eSarathi.front;

import java.util.Map;

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
import com.rr.movehack.eSarathi.front.model.RegistrationCommand;
import com.rr.movehack.eSarathi.front.model.TopupCommand;

@Controller
public class RegistrationController {

	private static final Logger LOGGER = LogManager.getLogger(RegistrationController.class);

	@Autowired
	private UserCardDao userCardDao;

	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public ModelAndView showForm() {

		ModelAndView mav = new ModelAndView("register", "command", new RegistrationCommand());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Map<String, Object> user = userCardDao.getUserData(auth.getName());

		mav.addObject("alreadyRegistered", (user.get("card_number") != null));

		return mav;

	}

	@RequestMapping("/registercard")
	public ModelAndView topup(@ModelAttribute("command") RegistrationCommand command) {
		LOGGER.info("Doing registration...");
		ModelAndView mav = new ModelAndView("register", "command", new RegistrationCommand());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		userCardDao.register(auth.getName(), command.getCardNumber());
		mav.addObject("status", "success");
		return mav;
	}

}
