package com.it.controller;

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
@RequestMapping(value = "Kuaidi")
public class KuaidiController {
	@Autowired
	private KuaidiMapper kuaidiMapper;

	@RequestMapping(value = "/initUtil.do")
	public String initUtil(HttpServletRequest request, Model model) {
		return "Kuaidi/saveOrUpdate";
	}

	@RequestMapping(value = "/selectUtil.do")
	public String selectUtil(HttpServletRequest request, Kuaidi util, Model model) {
		util = kuaidiMapper.selectObject(util.getId());
		model.addAttribute("util", util);
		return "Kuaidi/saveOrUpdate";
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
		List<Kuaidi> list = kuaidiMapper.getObjectList(field, fieldValue);
		PageModel pageModel = new PageModel();
		pageModel = pageModel.getUtilByController(list, currentPageNo);
		model.addAttribute("pageModel", pageModel);
		model.addAttribute("fieldValue", fieldValue);
		model.addAttribute("field", field);
		return "Kuaidi/find";	
}

	@RequestMapping(value = "/deleteUtil.do")
	public String deleteUtil(HttpServletRequest request, Kuaidi util, Model model) {
		try{
			kuaidiMapper.deleteObject(util.getId());
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
				kuaidiMapper.deleteObject(util.getId());
			}catch(Exception e){}
		}                                                                
		return this.getAllUtil(request, model);                    
	}                                                                  

	@RequestMapping(value = "/saveOrUpdateObject.do")
	public String saveOrUpdateObject(HttpServletRequest request, Kuaidi util, Model model) {
		//List<Kuaidi> list = kuaidiMapper.getObjectList("s_0", util.getS_0());
		if (0 == util.getId()) {
			//if (list.size() > 0) {
			//	model.addAttribute("util", util);
			//	model.addAttribute("errMsg", "该信息已存在!");
			//	return "Kuaidi/saveOrUpdate";
			//}
			kuaidiMapper.insertObject(util);
		} else {
			//if (list.size() > 1) {
			//	model.addAttribute("util", util);
			//	model.addAttribute("errMsg", "该信息已存在!");
			//	return "Kuaidi/saveOrUpdate";
			//}
			kuaidiMapper.updateObject(util);
		}
		return this.getAllUtil(request, model);
	}
}
