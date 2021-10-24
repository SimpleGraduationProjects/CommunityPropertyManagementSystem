package com.it.mapper;

import java.util.*;
import org.apache.ibatis.annotations.Param;
import com.it.model.CheWei;

public interface CheWeiMapper {

	public void insertObject(CheWei cheWei);

	public void deleteObject(int id);

	public void updateObject(CheWei cheWei);

	public CheWei selectObject(int id);

	public List<CheWei> getObjectList(@Param("field") String field,
			@Param("fieldValue") String fieldValue);

}
