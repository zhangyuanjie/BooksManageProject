package com.six.entity;

import org.springframework.stereotype.Repository;

@Repository("user")
public class User {
	private int id;
	private String name;
	private String pwd;
	private String sex;
	private int state;
	private String time;
	
	
	
	public User() {
		
	}


	public User(String name, String pwd) {
		this.name = name;
		this.pwd = pwd;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public int getState() {
		return state;
	}


	public void setState(int state) {
		this.state = state;
	}

	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", pwd=" + pwd + ", state=" + state + "]";
	}
	
	
	
}
