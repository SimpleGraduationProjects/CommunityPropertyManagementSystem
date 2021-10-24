package com.it.mapper;

import java.util.*;
import org.apache.ibatis.annotations.Param;
import com.it.model.JiaoFei;

public interface JiaoFeiMapper {

	public void insertObject(JiaoFei jiaoFei);

	public void deleteObject(int id);

	public void updateObject(JiaoFei jiaoFei);

	public JiaoFei selectObject(int id);

	public List<JiaoFei> getObjectList(@Param("field") String field,
			@Param("fieldValue") String fieldValue);

}
