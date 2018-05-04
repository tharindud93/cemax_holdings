package com.cemax.dao.Impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cemax.dao.InventryDao;
import com.cemax.domain.DailyInventry;



@Repository("inventryDao")
public class InventryDaoImpl implements InventryDao {

	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	String today=sdf.format(new Date());
	@PersistenceContext
	private EntityManager entityManager;

	
	public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }


	@Override
	public int adddinventry(DailyInventry dailyInventry) {
		entityManager.persist(dailyInventry);
		return 0;
	}


	@Override
	public DailyInventry getinvbytoday() {
		DailyInventry inventry;
		inventry=(DailyInventry) entityManager.createQuery("SELECT c FROM dinventry c WHERE c.date=:today")
				.setParameter("today", today).getSingleResult();
		System.out.println(inventry.getDate());
		return inventry;
		
	}
	
}
