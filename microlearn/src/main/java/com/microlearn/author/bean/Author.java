package com.microlearn.author.bean;

public class Author {

	String authorid,Password,Email,Name;
	boolean isallowed;
	public boolean isIsallowed() {
		return isallowed;
	}

	public void setIsallowed(boolean isallowed) {
		this.isallowed = isallowed;
	}

	


	public String getAuthorid() {
		return authorid;
	}

	public void setAuthorid(String authorid) {
		this.authorid = authorid;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}
	
}
