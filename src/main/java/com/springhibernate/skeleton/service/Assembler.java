package com.springhibernate.skeleton.service;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springhibernate.skeleton.domain.UserRole;

@Service("assembler")
public class Assembler {

	@Transactional(readOnly = true)
	User buildUserFromUserEntity(com.springhibernate.skeleton.domain.User userEntity) {

		String username = userEntity.getEmail();
		String password = userEntity.getPassword();
		boolean enabled = userEntity.getActive();
		boolean accountNonExpired = !userEntity.getAccountExpired();
		boolean credentialsNonExpired = !userEntity.getCredentialsExpired();
		boolean accountNonLocked = !userEntity.getAccountExpired();
		
		Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (UserRole role : userEntity.getUserRoles()) {
			authorities.add(new GrantedAuthorityImpl(role.getAuthority()));
		}

		User user = new User(username, password, enabled, accountNonExpired, credentialsNonExpired, 
							accountNonLocked, authorities);
		return user;
	}
	
}