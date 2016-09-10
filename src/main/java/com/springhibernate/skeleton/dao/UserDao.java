package com.springhibernate.skeleton.dao;

import com.springhibernate.skeleton.domain.User;

public interface UserDao {
		
	public User findByUsername(String username);

	public User getUserByEmail(String email);
	
}
