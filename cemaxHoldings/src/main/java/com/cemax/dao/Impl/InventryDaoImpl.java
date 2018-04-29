package com.cemax.dao.Impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cemax.dao.InventryDao;
import com.cemax.domain.DailyInventry;


@Repository("inventryDao")
public class InventryDaoImpl implements InventryDao {

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
	
}
