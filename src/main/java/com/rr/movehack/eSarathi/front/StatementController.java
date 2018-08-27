package com.rr.movehack.eSarathi.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rr.movehack.eSarathi.data.StatementDao;
import com.rr.movehack.eSarathi.data.model.CardStatement;

@Controller
public class StatementController {

	@Autowired
	private StatementDao statementDao;

	@RequestMapping("/statement.do")
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView("statement");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		List<CardStatement> cardStatements = statementDao.getStatement(auth.getName());

		double topups = cardStatements.stream().filter(cs -> (cs.getIs_topup() != null && "Y".equals(cs.getIs_topup())))
				.mapToDouble(cs -> Double.parseDouble(cs.getAmount())).sum();

		double deductions = cardStatements.stream()
				.filter(cs -> (cs.getIs_topup() == null || !"Y".equals(cs.getIs_topup())))
				.mapToDouble(cs -> Double.parseDouble(cs.getAmount())).sum();

		modelAndView.addObject("cardStatements", cardStatements);
		modelAndView.addObject("balance", topups - deductions);
		return modelAndView;
	}

}
