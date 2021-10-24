package com.it.mapper;

import java.util.*;
import org.apache.ibatis.annotations.Param;
import com.it.model.BaoXiu;

public interface BaoXiuMapper {

	public void insertObject(BaoXiu baoXiu);

	public void deleteObject(int id);

	public void updateObject(BaoXiu baoXiu);

	public BaoXiu selectObject(int id);

	public List<BaoXiu> getObjectList(@Param("field") String field,
			@Param("fieldValue") String fieldValue);

}
