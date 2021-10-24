package com.it.controller;

import java.util.List;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.it.model.*;
import com.it.mapper.*;

import com.it.util.PageModel;

@Controller
@RequestMapping(value = "PingJia")
public class PingJiaController {
	@Autowired
	private PingJiaMapper pingJiaMapper;
	@Autowired
	private UserMapper userMapper;

	@RequestMapping(value = "/initUtil.do")
	public String initUtil(HttpServletRequest request, Model model) {
		List<User> listUser = userMapper.getObjectList(null, null);
		model.addAttribute("listUser", listUser);
		return "PingJia/saveOrUpdate";
	}

	@RequestMapping(value = "/selectUtil.do")
	public String selectUtil(HttpServletRequest request, PingJia util, Model model) {
		util = pingJiaMapper.selectObject(util.getId());
		model.addAttribute("util", util);
		List<User> listUser = userMapper.getObjectList(null, null);
		model.addAttribute("listUser", listUser);
		return "PingJia/saveOrUpdate";
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
		List<PingJia> list = pingJiaMapper.getObjectList(field, fieldValue);
		List<PingJia> listPingJia = new ArrayList<PingJia>();
		HttpSession session = request.getSession();
		int user_id = (Integer) session.getAttribute("user_id");
		String user_type = (String) session.getAttribute("user_type");
		for (PingJia temp : list) {
			if (user_id == temp.getUser().getId()) {
				listPingJia.add(temp);
			}
		}
		if (!"admin".equals(user_type)) {
			//list = listPingJia;
		}

		PageModel pageModel = new PageModel();
		pageModel = pageModel.getUtilByController(list, currentPageNo);
		model.addAttribute("pageModel", pageModel);
		model.addAttribute("fieldValue", fieldValue);
		model.addAttribute("field", field);
		return "PingJia/find";	
}

	@RequestMapping(value = "/deleteUtil.do")
	public String deleteUtil(HttpServletRequest request, PingJia util, Model model) {
		try{
			pingJiaMapper.deleteObject(util.getId());
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
				pingJiaMapper.deleteObject(util.getId());
			}catch(Exception e){}
		}                                                                
		return this.getAllUtil(request, model);                    
	}                                                                  

	@RequestMapping(value = "/saveOrUpdateObject.do")
	public String saveOrUpdateObject(HttpServletRequest request, PingJia util, Model model) {
		//List<PingJia> list = pingJiaMapper.getObjectList("s_0", util.getS_0());
		List<User> listUser = userMapper.getObjectList(null, null);
		model.addAttribute("listUser", listUser);
		if (0 == util.getId()) {
			//if (list.size() > 0) {
			//	model.addAttribute("util", util);
			//	model.addAttribute("errMsg", "该信息已存在!");
			//	return "PingJia/saveOrUpdate";
			//}
			pingJiaMapper.insertObject(util);
		} else {
			//if (list.size() > 1) {
			//	model.addAttribute("util", util);
			//	model.addAttribute("errMsg", "该信息已存在!");
			//	return "PingJia/saveOrUpdate";
			//}
			pingJiaMapper.updateObject(util);
		}
		return this.getAllUtil(request, model);
	}
}
