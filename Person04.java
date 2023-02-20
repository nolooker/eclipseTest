package com.shopping.model;

public class Person04 {

	int no ;
	String name ;
	String sing ;
	String group ;
	
	public Person04() {
		
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSing() {
		return sing;
	}
	public void setSing(String sing) {
		this.sing = sing;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	
	public Person04(int no, String name, String sing, String group) {
		super();
		this.no = no;
		this.name = name;
		this.sing = sing;
		this.group = group;
	}
	
	@Override
	public String toString() {
		return "Person04 [no=" + no + ", name=" + name + ", sing=" + sing + ", group=" + group + "]";
	}
	
}
