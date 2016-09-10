package com.springhibernate.skeleton.auth;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;

public final class AuthenticationContext {

	private static final Logger logger = LoggerFactory.getLogger(AuthenticationContext.class);

	private AuthenticationContext() {
		
	}

	public static long getCurrentUserId() {
		UserDetails details = getCurrentUserDetails();
		return details != null ? details.getUserId() : 0;
	}

	public static UserDetails getCurrentUserDetails() {
		try {
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			if (principal != null && principal instanceof UserDetails) {
				return (UserDetails) principal;
			}
		} catch (Exception e) {
			logger.warn("Failed to load userdetails object" + e.getMessage());
		}
		return null;
	}
}