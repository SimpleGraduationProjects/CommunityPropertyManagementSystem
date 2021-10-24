package com.it.mapper;

import java.util.*;
import org.apache.ibatis.annotations.Param;
import com.it.model.Kuaidi;

public interface KuaidiMapper {

	public void insertObject(Kuaidi kuaidi);

	public void deleteObject(int id);

	public void updateObject(Kuaidi kuaidi);

	public Kuaidi selectObject(int id);

	public List<Kuaidi> getObjectList(@Param("field") String field,
			@Param("fieldValue") String fieldValue);

}
