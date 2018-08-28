package com.rr.movehack.eSarathi.integration.rest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.rr.movehack.eSarathi.data.StatementDao;
import com.rr.movehack.eSarathi.front.TopupController;
import com.rr.movehack.eSarathi.integration.rest.model.Charge;

@RestController
public class TransportRestController {

	private static final Logger LOGGER = LogManager.getLogger(TransportRestController.class);

	@Autowired
	private StatementDao statementDao;

	@PostMapping("/api/charge")
	public ResponseEntity<Object> charge(@RequestBody Charge charge) {
		LOGGER.debug("Ticket charge = " + charge);
		statementDao.addCharge(charge);
		return ResponseEntity.ok().build();
	}

}
