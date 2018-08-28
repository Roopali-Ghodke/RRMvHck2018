package com.rr.movehack.smartyatricard.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rr.movehack.smartyatricard.data.BusRouteTripDao;

@RestController
public class DataController {

	@Autowired
	private BusRouteTripDao busRouteTripDao;

	@RequestMapping(method = { RequestMethod.GET }, path = { "/busRouteData" })
	public List<String> getBusRouteData() {
		return busRouteTripDao.getBusRouteTrip();
	}
	
	@RequestMapping(method = { RequestMethod.GET }, path = { "/route" })
	public List<String> getRoute(@RequestParam("start") String start,@RequestParam("end") String end) {
		return busRouteTripDao.getBusRouteTrip();
	}
 
}
