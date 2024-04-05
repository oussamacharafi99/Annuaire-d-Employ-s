package com.Employes.servlets;

public class Employee {
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}





	public String getDepartement() {
		return departement;
	}


	public void setDepartement(String departement) {
		this.departement = departement;
	}


	public String getPost() {
		return post;
	}


	public void setPost(String post) {
		this.post = post;
	}

	private String name;
	private String email;
	private String phone;
	private String departement;
	private String post;
	
	Employee(){
		
	}
	Employee(String name, String email, String phone, String departement, String post ){
		this.name = name;
		this.email= email;
		this.phone = phone;
		this.departement = departement;
		this.post = post;
		
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}
	

}
