package com.props.godshivam;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface RentalMembersRepo extends JpaRepository<RentalMembers,Integer> {

//	@Query("select r from RentalMembers r where r.email= :email and r.password= :password")
	public RentalMembers findByEmailAndPassword(String email, String password);
	public RentalMembers findByEmail(String email);
	
	public boolean existsByEmail(String Email);
}
