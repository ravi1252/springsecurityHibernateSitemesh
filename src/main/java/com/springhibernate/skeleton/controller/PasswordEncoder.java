package com.springhibernate.skeleton.controller;

import org.springframework.dao.DataAccessException;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

public class PasswordEncoder extends Md5PasswordEncoder {

	@Override
	public String encodePassword(String arg0, Object arg1) throws DataAccessException {
		return super.encodePassword(arg0,null);
	}
	
	@Override
	public boolean isPasswordValid(String encPasswd, String plainPasswd, Object salt) throws DataAccessException {
		return super.isPasswordValid(encPasswd, plainPasswd, null);
	}

}
