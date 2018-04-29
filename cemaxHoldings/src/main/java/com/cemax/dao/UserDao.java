package com.cemax.dao;

import java.util.List;



import com.cemax.domain.User;
import com.cemax.domain.User;

public interface UserDao {
	

	public int addUser(User user);
	public User getUserById(String id);
	public int deleteUser(String id);
	public int updateUser(User user);
	public List<User> allUsers();
}


