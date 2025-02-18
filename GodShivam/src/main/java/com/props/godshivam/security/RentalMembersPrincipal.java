package com.props.godshivam.security;

import java.util.Collection;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.props.godshivam.RentalMembers;

public class RentalMembersPrincipal implements UserDetails
{
	@Autowired
	   private RentalMembers user;
		public RentalMembersPrincipal(RentalMembers user)
		{
		super();
		this.user = user;
		}

		@Override
		public Collection<? extends GrantedAuthority> getAuthorities() {
			// TODO Auto-generated method stub
			return Collections.singleton(new SimpleGrantedAuthority("USER"));
		}

		@Override
		public String getPassword() {
			// TODO Auto-generated method stub
			return user.getPassword();
		}

		@Override
		public String getUsername() {
			// TODO Auto-generated method stub
			return user.getEmail();
		}

		@Override
		public boolean isAccountNonExpired() {
			// TODO Auto-generated method stub
			return true;
		}

		@Override
		public boolean isAccountNonLocked() {
			// TODO Auto-generated method stub
			return true;
		}

		@Override
		public boolean isCredentialsNonExpired() {
			// TODO Auto-generated method stub
			return true;
		}

		@Override
		public boolean isEnabled() {
			// TODO Auto-generated method stub
			return true;
		}
}
