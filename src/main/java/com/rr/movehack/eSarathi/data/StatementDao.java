package com.rr.movehack.eSarathi.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.rr.movehack.eSarathi.data.model.CardStatement;

public class StatementDao {

	private static final Logger LOGGER = LogManager.getLogger(StatementDao.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<CardStatement> getStatement(String username) {
		LOGGER.debug("loading statements = " + username);
		String userQuery = "select cs.* from user u,card c, card_statement cs where cs.card_id = c.id and c.user_id=u.id and u.user_name='"
				+ username + "'";
//		String userQuery = "select cs.* from  card_statement cs ";
		return jdbcTemplate.query(userQuery, new ResultSetExtractor<List<CardStatement>>() {

			public List<CardStatement> extractData(ResultSet resultSetObj) throws SQLException {
				List<CardStatement> cardStatements = new ArrayList<>();

				while (resultSetObj.next()) {
					LOGGER.debug("############# LOADED statement = " );

					CardStatement cardStatement = new CardStatement();
					cardStatement.setAmount(resultSetObj.getString("amount"));
					cardStatement.setDate(resultSetObj.getString("date"));
					cardStatement.setFrom(resultSetObj.getString("from"));
					cardStatement.setTo(resultSetObj.getString("to"));
					cardStatement.setIs_topup(resultSetObj.getString("is_topup"));
					cardStatements.add(cardStatement);

				}
				return cardStatements;
			}

		});
	}

}
