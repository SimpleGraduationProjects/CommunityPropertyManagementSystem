package com.it.mapper;

import java.util.*;
import org.apache.ibatis.annotations.Param;
import com.it.model.TouSu;

public interface TouSuMapper {

	public void insertObject(TouSu touSu);

	public void deleteObject(int id);

	public void updateObject(TouSu touSu);

	public TouSu selectObject(int id);

	public List<TouSu> getObjectList(@Param("field") String field,
			@Param("fieldValue") String fieldValue);

}
