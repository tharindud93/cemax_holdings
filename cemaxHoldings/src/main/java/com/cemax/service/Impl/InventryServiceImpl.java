package com.cemax.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cemax.dao.InventryDao;
import com.cemax.domain.DailyInventry;
import com.cemax.service.InventryService;

@Service("inventryService")
@Transactional
@Scope(value="singleton",proxyMode=ScopedProxyMode.TARGET_CLASS)
public class InventryServiceImpl implements InventryService {
	
	@Autowired
	InventryDao inventryDao;

	@Override
	public int adddinventry(DailyInventry dailyInventry) {
		return inventryDao.adddinventry(dailyInventry);
	
	}
	

}
