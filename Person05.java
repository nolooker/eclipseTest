package com.shopping.model;

public class Person05 {

	String id ;
	String password ;
	String name ;
	String gender ;
	int age ;
	String email ; 
	String ageg ; 
	
	public Person05() {
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAgeg() {
		return ageg;
	}

	public void setAgeg(String ageg) {
		this.ageg = ageg;
	}

	@Override
	public String toString() {
		return "Person05 [id=" + id + ", password=" + password + ", name=" + name + ", gender=" + gender + ", age="
				+ age + ", email=" + email + ", ageg=" + ageg + "]";
	}

	public Person05(String id, String password, String name, String gender, int age, String email, String ageg) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.email = email;
		this.ageg = ageg;
	}
		
	
}
