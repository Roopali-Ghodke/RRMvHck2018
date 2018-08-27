package com.rr.movehack.eSarathi.data;

import java.util.Date;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserCardDao {
	private static final Logger LOGGER = LogManager.getLogger(StatementDao.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;

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
		LOGGER.debug("############# Petting profile = " + userName);

		String userQuery = "select u.*,c.* from user u, card c where c.user_id=u.id and  u.user_name='" + userName + "'";

		return jdbcTemplate.queryForMap(userQuery);

	}
}
