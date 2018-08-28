package com.rr.movehack.smartyatricard.data;

import java.util.Collections;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import com.rr.movehack.smartyatricard.data.model.User;

public class UserCardDao {
	private static final Logger LOGGER = LogManager.getLogger(StatementDao.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void createUser(User user) {
		String maxCardIdQuery = "select max(id) as maxIdValue from user ";
		Map<String, Object> maxCardIdMap = jdbcTemplate.queryForMap(maxCardIdQuery);
		String maxIdValue = (String) maxCardIdMap.get("maxIdValue");
		LOGGER.debug("Creating user = " + maxIdValue + " " + user);

		jdbcTemplate.update(
				"INSERT INTO user (id,user_name,password,first_name,last_name,address,is_purchased ) VALUES (?,?,?,?,?,?,?)",
				Integer.parseInt(maxIdValue) + 1, user.getUserName(), user.getPassword(), user.getFirstName(),
				user.getLastName(), user.getAddress() + " " + user.getCity() + " " + user.getState(),"N");
	}

	public void register(String userName, String cardNumber) {
		LOGGER.debug("############# Topping up statement = " + userName);

		String userQuery = "select u.* from user u where  u.user_name='" + userName + "'";
		Map<String, Object> user = jdbcTemplate.queryForMap(userQuery);
		LOGGER.debug("card = " + user.get("user_name"));

		String maxCardIdQuery = "select max(id) as maxCardId from card ";
		Map<String, Object> maxCardIdMap = jdbcTemplate.queryForMap(maxCardIdQuery);
		String maxCardIdValue = (String) maxCardIdMap.get("maxCardId");
		LOGGER.debug("card = " + maxCardIdMap);

		jdbcTemplate.update("INSERT INTO card (id, card_number , is_registered , user_id  ) VALUES (?,?,?,?)",
				Integer.parseInt(maxCardIdValue) + 1, cardNumber, "Y", user.get("id"));
	}

	public Map<String, Object> getUserData(String userName) {
		LOGGER.debug("############# Getting profile = " + userName);

		String userQuery = "select u.*,c.* from user u left join card c on c.user_id=u.id where u.user_name='" + userName
				+ "'";
		try {
			return jdbcTemplate.queryForMap(userQuery);
		} catch (EmptyResultDataAccessException e) {
			return Collections.emptyMap();
		}

	}

	public void purchase(String userName) {
		LOGGER.debug("############# Purchase= " + userName);

		jdbcTemplate.update("update user set is_purchased='Y' where user_name=?", userName);
	}

}
