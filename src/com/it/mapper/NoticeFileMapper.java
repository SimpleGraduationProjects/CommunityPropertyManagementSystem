package com.it.mapper;

import java.util.*;
import org.apache.ibatis.annotations.Param;
import com.it.model.NoticeFile;

public interface NoticeFileMapper {

	public void insertObject(NoticeFile noticeFile);

	public void deleteObject(int id);

	public void updateObject(NoticeFile noticeFile);

	public NoticeFile selectObject(int id);

	public List<NoticeFile> getObjectList(@Param("field") String field,
			@Param("fieldValue") String fieldValue);

}
