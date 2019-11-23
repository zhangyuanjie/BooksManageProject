package com.six.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.six.entity.User;

public interface UserMapper {
	User findUserByName(String name);
	User checkUser(User user);
	User selectUserByName(String name);
	int insertUser(User user);
	List<User> selectAllStudent();
	void deleteUserById(int id);
	int selectCount();
	User selectUserById(int id);
	void updateUser(User user);
}
