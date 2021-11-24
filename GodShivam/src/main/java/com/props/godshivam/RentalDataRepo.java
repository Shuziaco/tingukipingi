package com.props.godshivam;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RentalDataRepo extends JpaRepository<RentalData,Integer>
{
	public List<RentalData> findAllByEmail(String email);
}