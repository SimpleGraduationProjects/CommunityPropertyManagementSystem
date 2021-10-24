package com.it.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.it.model.User;

public interface UserMapper {

	public void insertObject(User user);

	public void deleteObject(int id);

	public void updateObject(User user);

	public User selectObject(int id);

	public List<User> getObjectByName(User user);

	public List<User> getObjectList(@Param("field") String field,
			@Param("fieldValue") String fieldValue);

}
