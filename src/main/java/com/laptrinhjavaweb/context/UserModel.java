package com.laptrinhjavaweb.model;

import java.io.Serializable;

public class UserModel implements Serializable {
	private String name;
	private String password;
	private String email;

	public UserModel() {
		setName("");
		setPassword("");
		setEmail("");
	}

	public UserModel(String name, String password, String email) {
		this.setName(name);
		this.setPassword(password);
		this.setEmail(email);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
}