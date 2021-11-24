package com.props.godshivam.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.props.godshivam.RentalMembers;
import com.props.godshivam.RentalMembersRepo;

@Service
public class GSUserDetailsService implements UserDetailsService {

	@Autowired
	private RentalMembersRepo repo;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		RentalMembers user = repo.findByEmail(username);
		
		if(user == null)
			throw new UsernameNotFoundException("User 404");
		return new RentalMembersPrincipal(user);
	}

}
