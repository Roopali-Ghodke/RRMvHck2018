package com.rr.movehack.smartyatricard.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.rr.movehack.smartyatricard.auth.AuthUserDetailsService;

public class DataLoader {

	private static final Logger LOGGER = LogManager.getLogger(DataLoader.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public Connection getConnection() throws Exception {

		String driver = "org.h2.Driver";
		String url = "jdbc:h2:mem:testdb";
		String username = "yourName";
		String password = "yourPass";
		Class.forName(driver);
		return DriverManager.getConnection(url, username, password);
	}

	@PostConstruct
	public void loadData() {

		// loadCsvAsTable("data\\bus\\Bus_Route_Trip_Data.csv",
		// "BUS_ROUTE_TRIP");
		// loadCsvAsTable("data\\metro\\DMRC_ENTRY_EXIT_20180722.csv",
		// "METRO_ENTRY_EXIT");
		// loadCsvAsTable("data\\metro\\StationID_StationName_Mapping.xlsx",
		// "METRO_STATION_ID");

		loadCsvAsTable("data\\database\\user.csv", "USER");
		loadCsvAsTable("data\\database\\card.csv", "CARD");
		loadCsvAsTable("data\\database\\card_statement.csv", "CARD_STATEMENT");
	}

	private void loadCsvAsTable(String csvPath, String tableName) {
		// String excelQueryLoad = "CREATE TABLE BUS_ROUTE_TRIP AS SELECT * FROM
		// CSVREAD('C:\\MSTD\\Codebases\\Movehack\\RRMvHck2018\\data\\bus\\Bus_Route_Trip_Data.csv');";
		String excelQueryLoad = "CREATE TABLE " + tableName + " AS SELECT * FROM CSVREAD('classpath:" + csvPath + "');";

		jdbcTemplate.execute(excelQueryLoad);
		String excelQuery = "select count(*) from " + tableName;
		jdbcTemplate.query(excelQuery, new ResultSetExtractor<List>() {

			public List extractData(ResultSet resultSetObj) throws SQLException, DataAccessException {
				List editorList = new ArrayList();
				while (resultSetObj.next()) {
					LOGGER.debug("############# LOADED = " + tableName + "  COUNT = " + resultSetObj.getString(1));
				}
				return editorList;
			}

		});

	}

}