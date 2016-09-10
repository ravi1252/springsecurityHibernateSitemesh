package com.springhibernate.skeleton.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springhibernate.skeleton.dao.UserDao;
import com.springhibernate.skeleton.domain.User;

@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {

	private UserDao userDao;
	private Assembler assembler;

	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String email)	throws UsernameNotFoundException, DataAccessException {
		User userEntity = null;
		try {
			userEntity = userDao.getUserByEmail(email);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (userEntity == null)
			throw new UsernameNotFoundException("user not found");

		return assembler.buildUserFromUserEntity(userEntity);
	}

	@Autowired
	@Required
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Autowired
	@Required
	public void setAssembler(Assembler assembler) {
		this.assembler = assembler;
	}

}