package com.it.mapper;

import java.util.*;
import org.apache.ibatis.annotations.Param;
import com.it.model.Chur;

public interface ChurMapper {

	public void insertObject(Chur chur);

	public void deleteObject(int id);

	public void updateObject(Chur chur);

	public Chur selectObject(int id);

	public List<Chur> getObjectList(@Param("field") String field,
			@Param("fieldValue") String fieldValue);

}
