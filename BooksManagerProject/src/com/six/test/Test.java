package com.six.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.six.entity.User;
import com.six.service.UserService;

public class Test {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		User user = (User)context.getBean("user");
		user.setName("zcj");
		user.setPwd("123456");
		UserService us = (UserService)context.getBean("us");
		us.insertUser(user);
		System.out.println("≤Â»Î≥…π¶");
	}
}
