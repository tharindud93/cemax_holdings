package com.cemax.service;

import java.util.List;

import com.cemax.domain.DailyInventry;

public interface InventryService {

	public int adddinventry(DailyInventry dailyInventry);
	public DailyInventry getinvbytoday();
	public List<DailyInventry> AllINventrys();
	public DailyInventry getinvbyday(String day);

}
