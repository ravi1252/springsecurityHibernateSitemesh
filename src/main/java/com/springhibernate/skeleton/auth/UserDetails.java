package com.springhibernate.skeleton.auth;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;

import com.springhibernate.skeleton.domain.User;

public class UserDetails implements	org.springframework.security.core.userdetails.UserDetails {

	private static final long serialVersionUID = -5606540655147546201L;
	private List<GrantedAuthority> authorities = null;
	private boolean accountNonLocked;
	private User user;

	public UserDetails(User dbUser) {
		this.user = dbUser;
	}

	@Override
	public String getPassword() {
		return user.getPassword();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return accountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	@Override
	public Collection<GrantedAuthority> getAuthorities() {
		return this.authorities;
	}

	@Override
	public String getUsername() {
		return user.getEmail();
	}

	public long getUserId() {
		return user.getId();
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}