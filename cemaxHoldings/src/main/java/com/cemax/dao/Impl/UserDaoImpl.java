package com.cemax.dao.Impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cemax.dao.UserDao;
import com.cemax.domain.User;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	
	
	@PersistenceContext
	private EntityManager entityManager;

	
	public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }
	
	@Override
	public int addUser(User user) {
		
		entityManager.persist(user);
		return 0;
	}

	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteUser(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUser(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<User> allUsers() {
		// TODO Auto-generated method stub
		return null;
	}

}
