package com.rr.movehack.eSarathi.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rr.movehack.eSarathi.data.BusRouteTripDao;

@RestController
public class DataController {

	@Autowired
	private BusRouteTripDao busRouteTripDao;

	@RequestMapping(method = { RequestMethod.GET }, path = { "/busRouteData" })
	public List<String> getBusRouteData() {
		return busRouteTripDao.getBusRouteTrip();
	}

}
