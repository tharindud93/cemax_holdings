package com.cemax.dao;

import com.cemax.domain.DailyInventry;

public interface InventryDao {
	
	public int adddinventry(DailyInventry dailyInventry);
	public DailyInventry getinvbytoday();

}
