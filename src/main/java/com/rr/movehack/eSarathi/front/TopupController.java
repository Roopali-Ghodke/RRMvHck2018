package com.rr.movehack.eSarathi.front;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rr.movehack.eSarathi.data.StatementDao;
import com.rr.movehack.eSarathi.front.model.TopupCommand;

@Controller
public class TopupController {

	private static final Logger LOGGER = LogManager.getLogger(TopupController.class);

	@RequestMapping(value = "/topup.do", method = RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("topup", "command", new TopupCommand());
	}

	@RequestMapping("/pay")
	public ModelAndView topup(@ModelAttribute("command") TopupCommand command) {
		LOGGER.info("Doing payment...");
		ModelAndView mav = new ModelAndView("topup", "command", new TopupCommand());
		mav.addObject("status", "success");
		return mav;
	}

}
