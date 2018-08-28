package com.rr.movehack.smartyatricard.integration.rest.model;

public class Charge {

	private String cardNumber;

	private String transportName;

	private String fromLocation;

	private String toLocation;

	private Double amount;

	private String travelTimeDate;

	public String getTransportName() {
		return transportName;
	}

	public void setTransportName(String transportName) {
		this.transportName = transportName;
	}

	public String getFromLocation() {
		return fromLocation;
	}

	public void setFromLocation(String fromLocation) {
		this.fromLocation = fromLocation;
	}

	public String getToLocation() {
		return toLocation;
	}

	public void setToLocation(String toLocation) {
		this.toLocation = toLocation;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public String getTravelTimeDate() {
		return travelTimeDate;
	}

	public void setTravelTimeDate(String travelTimeDate) {
		this.travelTimeDate = travelTimeDate;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	@Override
	public String toString() {
		return getCardNumber() + " " + getFromLocation() + " " + getToLocation() + " " + getTransportName() + " "
				+ getTravelTimeDate() + " " + getAmount();
	}

}
