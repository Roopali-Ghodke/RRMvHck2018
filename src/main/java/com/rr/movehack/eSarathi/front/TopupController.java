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
public class TopupController {

	private static final Logger LOGGER = LogManager.getLogger(TopupController.class);

	@Autowired
	private StatementDao statementDao;

	@Autowired
	private UserCardDao userCardDao;

	@RequestMapping(value = "/topup.do", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("topup", "command", new TopupCommand());
	}

	@RequestMapping("/pay")
	public ModelAndView topup(@ModelAttribute("command") TopupCommand command) {
		LOGGER.info("Doing payment...");
		ModelAndView mav = new ModelAndView("topup", "command", new TopupCommand());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		statementDao.topup(auth.getName(), command.getAmount());
		mav.addObject("status", "success");
		return mav;
	}

	@RequestMapping(value = "/purchase.do", method = RequestMethod.GET)
	public ModelAndView purchase() {

		ModelAndView mav = new ModelAndView("purchase", "command", new TopupCommand());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Map<String, Object> user = userCardDao.getUserData(auth.getName());

		mav.addObject("alreadyPurchased", (user.get("is_purchased") != null && "Y".equals(user.get("is_purchased"))));

		return mav;
	}

	@RequestMapping("/purchaseCard")
	public ModelAndView purchase(@ModelAttribute("command") TopupCommand command) {
		LOGGER.info("Doing purchase payment...");
		ModelAndView mav = new ModelAndView("purchase", "command", new TopupCommand());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		userCardDao.purchase(auth.getName());
		mav.addObject("status", "success");
		return mav;
	}

}
