package com.rr.movehack.eSarathi.auth;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class AuthUserDetailsService implements UserDetailsService {

	private static final Logger LOGGER = LogManager.getLogger(AuthUserDetailsService.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public UserDetails loadUserByUsername(String username) {
		LOGGER.debug("loading user = " + username);
		String userQuery = "select * from user where user_name='" + username + "'";

		UserDetails user = jdbcTemplate.query(userQuery, new ResultSetExtractor<UserDetails>() {

			public UserDetails extractData(ResultSet resultSetObj) throws SQLException {
				UserBuilder users = User.withDefaultPasswordEncoder();
				UserDetails user = null;
				while (resultSetObj.next()) {
					LOGGER.debug("############# LOADED  = " + resultSetObj.getString("first_name"));
					List<GrantedAuthority> authority = new ArrayList<>();
					authority.add(new SimpleGrantedAuthority("USER"));
					user = users.username(resultSetObj.getString("user_name"))
							.password(resultSetObj.getString("password")).roles("USER").build();
					// new User(resultSetObj.getString("user_name"),
					// resultSetObj.getString("password"), authority);
				}
				return user;
			}

		});

		if (user == null) {
			throw new UsernameNotFoundException(username);
		}

		return user;

	}
}