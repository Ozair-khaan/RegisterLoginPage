package com.bean;

public class student {
	private int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private String firstname;
	private String middlename;
	private String lastname;
	private String mobileno;
	private String email;
	private String address;
	private String username;
	private String password;
	private String retypepsw;

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMiddlename() {
		return middlename;
	}

	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRetypepsw() {
		return retypepsw;
	}

	public void setRetypepsw(String retypepsw) {
		this.retypepsw = retypepsw;
	}

	@Override
	public String toString() {
		return "student [firstname=" + firstname + ", middlename=" + middlename + ", lastname=" + lastname
				+ ", mobileno=" + mobileno + ", email=" + email + ", address=" + address + ", username=" + username
				+ ", password=" + password + ", retypepsw=" + retypepsw + "]";
	}

}
