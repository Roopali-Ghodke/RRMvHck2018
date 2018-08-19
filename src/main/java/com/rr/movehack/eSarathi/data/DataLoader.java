package com.rr.movehack.eSarathi.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

public class DataLoader {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public Connection getConnection() throws Exception {

		// String driver = "sun.jdbc.odbc.JdbcOdbcDriver";
		// String driver ="org.hsqldb.jdbc.JDBCDriver";
		String driver = "org.h2.Driver";
		// String url = "jdbc:odbc:excelDB";
		// String url = "jdbc:odbc:Driver={Microsoft Excel Driver (*.xls)};"
		// +
		// "DBQ=C:\\MSTD\\Codebases\\Movehack\\RRMvHck2018\\data\\bus\\Bus_Route_Trip_Data.csv";
		// String url =
		// "'jdbc:hsqldb:file:C:\\MSTD\\Codebases\\Movehack\\RRMvHck2018\\data\\bus\\Bus_Route_Trip_Data";
		String url = "jdbc:h2:mem:testdb";
		String username = "yourName";
		String password = "yourPass";
		Class.forName(driver);
		// Class.forName("org.hsqldb.jdbcDriver");
		return DriverManager.getConnection(url, username, password);
	}

	@PostConstruct
	public void loadData() {
		String excelQueryLoad = "CREATE TABLE BUS_ROUTE_TRIP AS SELECT * FROM CSVREAD('C:\\MSTD\\Codebases\\Movehack\\RRMvHck2018\\data\\bus\\Bus_Route_Trip_Data.csv');";

		jdbcTemplate.execute(excelQueryLoad);

		String excelQuery = "select * from BUS_ROUTE_TRIP";
		jdbcTemplate.query(excelQuery, new ResultSetExtractor<List>() {

			public List extractData(ResultSet resultSetObj) throws SQLException, DataAccessException {
				List editorList = new ArrayList();
				while (resultSetObj.next()) {
					System.out.println(resultSetObj.getString(1));
				}
				return editorList;
			}

		});
	}

	public void loadDataOld() throws Exception {

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		conn = getConnection();
		stmt = conn.createStatement();
		String excelQueryLoad = "CREATE TABLE BUS_ROUTE_TRIP AS SELECT * FROM CSVREAD('C:\\MSTD\\Codebases\\Movehack\\RRMvHck2018\\data\\bus\\Bus_Route_Trip_Data.csv');";
		stmt.executeUpdate(excelQueryLoad);

		String excelQuery = "select * from BUS_ROUTE_TRIP";
		rs = stmt.executeQuery(excelQuery);

		while (rs.next()) {
			System.out.println(rs.getString(1));
		}

		rs.close();
		stmt.close();
		conn.close();

	}

	public static void main(String args[]) throws Exception {

		DataLoader dataLoader = new DataLoader();
		dataLoader.loadData();
	}

}
