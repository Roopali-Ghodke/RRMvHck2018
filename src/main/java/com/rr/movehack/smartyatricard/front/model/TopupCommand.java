package com.rr.movehack.smartyatricard.front.model;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class TopupCommand {
	@NotNull
	@Size(min=16, max=16)
	private String creditCardNumber;
	private String creditCardExpiry;
	@NotNull
	@Size(min=3, max=6)
	private String creditCardCVV;
	@NotNull
	@Size(min=2, max=100)
	private String name;
	@NotNull
	@Min(value=10)
	private double amount;
	@NotNull
	@Size(min=2)
	private String address;

	public String getCreditCardNumber() {
		return creditCardNumber;
	}

	public void setCreditCardNumber(String creditCardNumber) {
		this.creditCardNumber = creditCardNumber;
	}

	public String getCreditCardExpiry() {
		return creditCardExpiry;
	}

	public void setCreditCardExpiry(String creditCardExpiry) {
		this.creditCardExpiry = creditCardExpiry;
	}

	public String getCreditCardCVV() {
		return creditCardCVV;
	}

	public void setCreditCardCVV(String creditCardCVV) {
		this.creditCardCVV = creditCardCVV;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
