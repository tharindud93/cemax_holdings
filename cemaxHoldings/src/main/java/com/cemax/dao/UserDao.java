package com.cemax.dao;

import java.util.List;



import com.cemax.domain.User;
import com.cemax.domain.User;

public interface UserDao {
	

	public int addUser(User user);
	public User getUserById(int id);
	public int deleteUser(int id);
	public int updateUser(int id);
	public List<User> allUsers();
}


