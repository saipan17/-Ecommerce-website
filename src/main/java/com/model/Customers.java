package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customers {
	
	@Id
	String emailId;
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setQuestions(String questions) {
		this.questions = questions;
	}

	public void setAnswers(String answers) {
		this.answers = answers;
	}

	String password;
	String fname;
	String lname;
	String mob;
	String address;
	String questions;
	String answers;
	
	public String getQuestions() {
		return questions;
	}

	public String getAnswers() {
		return answers;
	}

	public Customers(String emailId, String password, String fname, String lname, String mob, String address,
			String questions, String answers) {
		super();
		this.emailId = emailId;
		this.password = password;
		this.fname = fname;
		this.lname = lname;
		this.mob = mob;
		this.address = address;
		this.questions = questions;
		this.answers = answers;
	}

	public Customers(){
		
	}
	
	public Customers(String emailId, String password, String fname, String lname, String mob, String address) {
		super();
		this.emailId = emailId;
		this.password = password;
		this.fname = fname;
		this.lname = lname;
		this.mob = mob;
		this.address = address;
	}
	

	public String getEmailId() {
		return emailId;
	}

	public String getPassword() {
		return password;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getMob() {
		return mob;
	}

	public String getAddress() {
		return address;
	}
	
}
