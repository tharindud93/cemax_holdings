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
	public User getUserById(String id) {
		User user=entityManager.find(User.class, id);
		return user;
	}

	@Override
	public int deleteUser(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUser(User usr) {
		User user=entityManager.find(User.class, usr.getUserid());
		user.setAddress(usr.getAddress());
		user.setCno(usr.getCno());
		user.setUsername(usr.getUsername());
		user.setPass(usr.getPass());
		return 0;
	}

	@Override
	public List<User> allUsers() {
		List<User> users;
		users=entityManager.createQuery("SELECT c FROM user c").getResultList();
		return users;
	}

}
