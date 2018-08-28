package com.rr.movehack.smartyatricard.model;

public class MetroStation {
	private int siteId;
	private String stationName;

	public MetroStation(int siteId, String stationName) {
		super();
		this.siteId = siteId;
		this.stationName = stationName;
	}

	public int getSiteId() {
		return siteId;
	}

	public void setSiteId(int siteId) {
		this.siteId = siteId;
	}

	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

}
