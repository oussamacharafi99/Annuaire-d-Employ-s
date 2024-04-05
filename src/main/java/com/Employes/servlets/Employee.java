package com.Employes.servlets;

public class Employee {
	public Employee(String id, String name, String email, String phone, String departement, String post) {
		this.id=id;
		this.name = name;
		this.email= email;
		this.phone = phone;
		this.departement = departement;
		this.post = post;
		
	}


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
	private String id;
	private String name;
	private String email;
	private String phone;
	private String departement;
	private String post;
	
	


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}
	

}
