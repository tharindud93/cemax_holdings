package com.cemax.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cemax.dao.UserDao;
import com.cemax.domain.User;
import com.cemax.service.UserService;
@Service("userService")
@Transactional
@Scope(value="singleton",proxyMode=ScopedProxyMode.TARGET_CLASS)
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao userDao;
	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return userDao.addUser(user);
	}

	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return userDao.getUserById(id);
	}

	@Override
	public int deleteUser(int id) {
		// TODO Auto-generated method stub
		return userDao.deleteUser(id);
	}

	@Override
	public int updateUser(int id) {
		// TODO Auto-generated method stub
		return userDao.updateUser(id);
	}

	@Override
	public List<User> allUsers() {
		// TODO Auto-generated method stub
		return userDao.allUsers();
	}

}
