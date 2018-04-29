package com.cemax.service;

import java.util.List;

import com.cemax.domain.User;

public interface UserService {

	public int addUser(User user);
	public User getUserById(String id);
	public int deleteUser(String id);
	public int updateUser(User user);
	public List<User> allUsers();
	
}
