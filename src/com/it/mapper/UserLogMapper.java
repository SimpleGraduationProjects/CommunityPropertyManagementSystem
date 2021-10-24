package com.it.mapper;

import java.util.*;
import org.apache.ibatis.annotations.Param;
import com.it.model.UserLog;

public interface UserLogMapper {

	public void insertObject(UserLog userLog);

	public void deleteObject(int id);

	public void updateObject(UserLog userLog);

	public UserLog selectObject(int id);

	public List<UserLog> getObjectList(@Param("field") String field,
			@Param("fieldValue") String fieldValue);

}
