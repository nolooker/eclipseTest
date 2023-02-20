package com.shopping.model;

public class Person03 {

	
	private String name ;
	private String gender ;
	private String job ;
	
	public Person03(){
		
	}
	
	public Person03(String name, String gender, String job) {
		super();
		this.name = name;
		this.gender = gender;
		this.job = job;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	@Override
	public String toString() {
		return "Person03 [name=" + name + ", gender=" + gender + ", job=" + job + "]";
	}
	
	
}
