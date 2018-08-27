package com.rr.movehack.eSarathi.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.rr.movehack.eSarathi.data.model.CardStatement;
import com.rr.movehack.eSarathi.integration.rest.model.Charge;

public class StatementDao {

	private static final Logger LOGGER = LogManager.getLogger(StatementDao.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<CardStatement> getStatement(String username) {
		LOGGER.debug("loading statements = " + username);
		String userQuery = "select cs.* from user u,card c, card_statement cs where cs.card_id = c.id and c.user_id=u.id and u.user_name='"
				+ username + "'";
		// String userQuery = "select cs.* from card_statement cs ";
		return jdbcTemplate.query(userQuery, new ResultSetExtractor<List<CardStatement>>() {

			public List<CardStatement> extractData(ResultSet resultSetObj) throws SQLException {
				List<CardStatement> cardStatements = new ArrayList<>();

				while (resultSetObj.next()) {
					LOGGER.debug("############# LOADED statement = ");

					CardStatement cardStatement = new CardStatement();
					cardStatement.setCard_id(resultSetObj.getString("card_id"));
					cardStatement.setAmount(resultSetObj.getString("amount"));
					cardStatement.setDate(resultSetObj.getString("date"));
					cardStatement.setFrom(resultSetObj.getString("from_location"));
					cardStatement.setTo(resultSetObj.getString("to_location"));
					cardStatement.setIs_topup(resultSetObj.getString("is_topup"));
					cardStatement.setTransport(resultSetObj.getString("transport"));

					cardStatements.add(cardStatement);

				}
				return cardStatements;
			}

		});
	}

	public void addCharge(Charge charge) {
		LOGGER.debug("############# Charging statement = " + charge.getCardNumber() + " " + charge.getTravelTimeDate()
				+ " " + charge.getFromLocation() + " " + charge.getToLocation() + " " + charge.getAmount());

		Map<String, Object> card = jdbcTemplate
				.queryForMap("select * from card where card_number ='" + charge.getCardNumber() + "'");
		LOGGER.debug("card = " + card);

		jdbcTemplate.update(
				"INSERT INTO card_statement ( card_id , date,is_topup , from_location , to_location , amount ) VALUES (?, ?,'N',?,?,?)",
				card.get("id"), charge.getTravelTimeDate(), charge.getFromLocation(), charge.getToLocation(),
				charge.getAmount());
	}

	public void topup(String userName, double amount) {
		LOGGER.debug("############# Topping up statement = " + userName);

		String userQuery = "select c.* from user u,card c where  c.user_id=u.id and u.user_name='" + userName + "'";

		Map<String, Object> card = jdbcTemplate.queryForMap(userQuery);
		LOGGER.debug("card = " + card);

		jdbcTemplate.update(
				"INSERT INTO card_statement ( card_id , date,is_topup , from_location , to_location , amount ) VALUES (?, ?,'Y',null,null,?)",
				card.get("id"), new Date(), amount);
	}

}
