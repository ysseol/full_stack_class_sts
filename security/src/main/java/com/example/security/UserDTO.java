package com.example.security;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserDTO extends User {
	private String userid;
	
	public UserDTO(String username, String password, 
			boolean enabled, 
			boolean accountNonExpired,
			boolean credentialsNonExpired, 
			boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities, String userid) {
		
		super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		this.userid = userid;
	}
	
	public String getUserid() {
		return userid;
	}
	
	@Override
	public String toString() {
		return "UserDTO [userid=" + userid + "]";
	}
	
	public void setUserid(String userid) {
		this.userid = userid;
	}
}
