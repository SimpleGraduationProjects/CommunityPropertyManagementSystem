package com.it.mapper;

import java.util.*;
import org.apache.ibatis.annotations.Param;
import com.it.model.PingJia;

public interface PingJiaMapper {

	public void insertObject(PingJia pingJia);

	public void deleteObject(int id);

	public void updateObject(PingJia pingJia);

	public PingJia selectObject(int id);

	public List<PingJia> getObjectList(@Param("field") String field,
			@Param("fieldValue") String fieldValue);

}
