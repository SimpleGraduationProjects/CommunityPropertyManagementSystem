package com.it.mapper;

import java.util.*;
import org.apache.ibatis.annotations.Param;
import com.it.model.ZhuFang;

public interface ZhuFangMapper {

	public void insertObject(ZhuFang zhuFang);

	public void deleteObject(int id);

	public void updateObject(ZhuFang zhuFang);

	public ZhuFang selectObject(int id);

	public List<ZhuFang> getObjectList(@Param("field") String field,
			@Param("fieldValue") String fieldValue);

}
