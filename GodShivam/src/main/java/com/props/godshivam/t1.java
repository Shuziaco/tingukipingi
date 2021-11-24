package com.props.godshivam;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class t1 
{
	@Id
  String paths;
	

	public t1() {
		super();
	}


	public String getPaths() {
		return paths;
	}


	public void setPaths(String paths) {
		this.paths = paths;
	}


	public t1(String paths) {
		super();
		this.paths = paths;
	}
	
}
