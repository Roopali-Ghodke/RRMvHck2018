package com.rr.movehack.eSarathi.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

public class BusRouteTripDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<String> getBusRouteTrip() {
		String excelQuery = "select * from BUS_ROUTE_TRIP where VehicleNo='B1'";
		return jdbcTemplate.query(excelQuery, new ResultSetExtractor<List<String>>() {

			public List<String> extractData(ResultSet resultSetObj) throws SQLException, DataAccessException {
				List<String> editorList = new ArrayList<String>();
				while (resultSetObj.next()) {
					System.out.println(resultSetObj.getString(1));
					editorList.add(resultSetObj.getString(1));
				}
				return editorList;
			}

		});
	}

}
