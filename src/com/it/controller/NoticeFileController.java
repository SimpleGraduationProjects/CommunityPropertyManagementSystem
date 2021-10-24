package com.it.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.it.model.*;
import com.it.mapper.*;

import com.it.util.PageModel;

@Controller
@RequestMapping(value = "NoticeFile")
public class NoticeFileController {
	@Autowired
	private NoticeFileMapper noticeFileMapper;

	@RequestMapping(value = "/initUtil.do")
	public String initUtil(HttpServletRequest request, Model model) {
		return "NoticeFile/saveOrUpdate";
	}

	@RequestMapping(value = "/selectUtil.do")
	public String selectUtil(HttpServletRequest request, NoticeFile util, Model model) {
		util = noticeFileMapper.selectObject(util.getId());
		model.addAttribute("util", util);
		return "NoticeFile/saveOrUpdate";
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value = "/getAllUtil.do")
	public String getAllUtil(HttpServletRequest request, Model model) {
		String field = request.getParameter("field");
		String fieldValue = request.getParameter("fieldValue");
		try {
			fieldValue = new String(fieldValue.getBytes("iso-8859-1"), "utf-8");
		} catch (Exception e) {}
		String pageNo = request.getParameter("pageModel.currentPageNo");
		int currentPageNo = 1;
		try{
			currentPageNo = Integer.parseInt(pageNo);
		}catch(Exception e){
		}
		List<NoticeFile> list = noticeFileMapper.getObjectList(field, fieldValue);
		PageModel pageModel = new PageModel();
		pageModel = pageModel.getUtilByController(list, currentPageNo);
		model.addAttribute("pageModel", pageModel);
		model.addAttribute("fieldValue", fieldValue);
		model.addAttribute("field", field);
		return "NoticeFile/find";	
}

	@RequestMapping(value = "/deleteUtil.do")
	public String deleteUtil(HttpServletRequest request, NoticeFile util, Model model) {
		try{
			noticeFileMapper.deleteObject(util.getId());
		}catch(Exception e){
		}
		return this.getAllUtil(request, model);
	}

	@RequestMapping(value = "/deleteManyUtil.do")                    
	public String deleteManyUtil(HttpServletRequest request, User util,
			Model model) {                                                 
		String ids[] = request.getParameterValues("id");               
		for (String id : ids) {                                          
			util = new User();                                             
			util.setId(Integer.parseInt(id));                              
			try{
				noticeFileMapper.deleteObject(util.getId());
			}catch(Exception e){}
		}                                                                
		return this.getAllUtil(request, model);                    
	}                                                                  

	@RequestMapping(value = "/saveOrUpdateObject.do")
	public String saveOrUpdateObject(HttpServletRequest request, NoticeFile util, Model model) {
		//List<NoticeFile> list = noticeFileMapper.getObjectList("s_0", util.getS_0());
		if (0 == util.getId()) {
			//if (list.size() > 0) {
			//	model.addAttribute("util", util);
			//	model.addAttribute("errMsg", "该信息已存在!");
			//	return "NoticeFile/saveOrUpdate";
			//}
			noticeFileMapper.insertObject(util);
		} else {
			//if (list.size() > 1) {
			//	model.addAttribute("util", util);
			//	model.addAttribute("errMsg", "该信息已存在!");
			//	return "NoticeFile/saveOrUpdate";
			//}
			noticeFileMapper.updateObject(util);
		}
		return this.getAllUtil(request, model);
	}

	@RequestMapping(value = "/upload.do")
	public String upload(@RequestParam MultipartFile[] myfiles, HttpServletRequest request, NoticeFile util, Model model) throws IOException{
		for (MultipartFile file : myfiles) {
			if (!file.isEmpty()) {
				String fileName = file.getOriginalFilename();
				String path = request.getSession().getServletContext()
						.getRealPath("upload")
						+ File.separator;
				String uploadName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date())
						+ fileName;
				File localFile = new File(path + uploadName);
				file.transferTo(localFile);
				util.setS_0(uploadName);
				util.setS_1(fileName);
				util.setS_2(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			}else{
				//List<NoticeFile> list = noticeFileMapper.getObjectList("s_3", util.getS_3());
				if (0 == util.getId()) {
					//if (list.size() > 0) {
					//	model.addAttribute("util", util);
					//	model.addAttribute("errMsg", "该信息已存在!");
					//	return "NoticeFile/saveOrUpdate";
					//}
					util.setS_0("None");
					util.setS_1("None");
					util.setS_2(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
				} else {
					//if (list.size() > 1) {
					//	model.addAttribute("util", util);
					//	model.addAttribute("errMsg", "该信息已存在!");
					//	return "NoticeFile/saveOrUpdate";
					//}
					NoticeFile utilTmp = noticeFileMapper.selectObject(util
							.getId());
					util.setS_0(utilTmp.getS_0());
					util.setS_1(utilTmp.getS_1());
					util.setS_2(utilTmp.getS_2());
				}
			}

			if (0 == util.getId()) {
				noticeFileMapper.insertObject(util);
			} else {
				noticeFileMapper.updateObject(util);
			}
			return "NoticeFile/ok";

		}

		return "NoticeFile/ok";
	}
}
