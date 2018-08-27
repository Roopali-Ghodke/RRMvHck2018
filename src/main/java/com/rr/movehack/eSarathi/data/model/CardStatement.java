package com.rr.movehack.eSarathi.data.model;

public class CardStatement {
	private String card_id;
	private String date;
	private String is_topup;
	private String from;
	private String to;
	private String amount;

	public String getCard_id() {
		return card_id;
	}

	public void setCard_id(String card_id) {
		this.card_id = card_id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getIs_topup() {
		return is_topup;
	}

	public void setIs_topup(String is_topup) {
		this.is_topup = is_topup;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}
}
