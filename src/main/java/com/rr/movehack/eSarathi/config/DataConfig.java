package com.rr.movehack.eSarathi.config;

import javax.sql.DataSource;

import org.h2.store.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.rr.movehack.eSarathi.data.BusRouteTripDao;
import com.rr.movehack.eSarathi.data.DataLoader;
import com.rr.movehack.eSarathi.data.StatementDao;
import com.rr.movehack.eSarathi.data.UserCardDao;

@Configuration
public class DataConfig {
	@Autowired
	private Environment env;

	@Bean
	public DataLoader dataLoader() throws Exception {
		DataLoader dataLoader = new DataLoader();

		return dataLoader;
	}

	@Bean
	public JdbcTemplate jdbcTemplate() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate();
		jdbcTemplate.setDataSource(dataSource());
		return jdbcTemplate;
	}

	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:mem:movehackdb;DB_CLOSE_DELAY=-1");
		dataSource.setUsername("jdbc.username");
		dataSource.setPassword("jdbc.password");
		return dataSource;
	}

	@Bean
	public BusRouteTripDao busRouteTripDao() {
		return new BusRouteTripDao();
	}

	@Bean
	public StatementDao statementDao() {
		return new StatementDao();
	}

	@Bean
	public UserCardDao userCardDao() {
		return new UserCardDao();
	}
}
