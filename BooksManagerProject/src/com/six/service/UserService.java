package com.six.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.UserMapper;
import com.six.entity.User;


@Service
public class UserService{

	@Autowired
	private UserMapper um;
	

	public User checkUser(User user) {
		return um.checkUser(user);
	}
	
	public User selectUserByName(String name) {
		return um.selectUserByName(name);
	}
	
	public int insertUser(User user) {
		return um.insertUser(user);
	}
	
	public List<User> selectAllStudent() {
		return um.selectAllStudent();
	}
	
	public void deleteUserById(int id) {
		um.deleteUserById(id);
	}
	
	public User selectUserById(int id) {
		return um.selectUserById(id);
	}
	
	public int selectCount(){
		return um.selectCount();
	}
	
	public void updateUser(User user) {
		um.updateUser(user);
	}
}
