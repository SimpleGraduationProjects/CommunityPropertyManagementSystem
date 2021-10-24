package com.it.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.checklogin.SysUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.it.mapper.UserLogMapper;
import com.it.mapper.UserMapper;
import com.it.model.User;
import com.it.model.UserLog;
import com.it.util.PageModel;
import com.it.util.SystemUtils;

@Controller
@RequestMapping(value = "User")
public class UserController {
	@Autowired
	private UserLogMapper userLogMapper;
	@Autowired
	private UserMapper userMapper;

	@RequestMapping(value = "/login.do")
	public String login(HttpServletRequest request, User util, Model model) {

		HttpSession session = request.getSession();
		String code = (String) session.getAttribute("code");
		String userCode = request.getParameter("code");

		if (!code.equals(userCode)) {
			model.addAttribute("errMsg", "验证码错误");
			return "../login";
		}
		List<User> listUser = userMapper.getObjectByName(util);
		int i = 0;
		User user = null;
		if (null != listUser && listUser.size() > 0) {
			for (User u : listUser) {
				boolean flag = u.getS_1().equals(util.getS_1());
				if (flag) {
					i = 1;
					user = u;
					break;
				}
			}
			if (i == 0) {
				model.addAttribute("errMsg", "登录失败");
				return "../login";
			}
		} else {
			model.addAttribute("errMsg", "登录失败");
			return "../login";
		}

		if (i == 1 && !SysUtil.getSysFlag()) {
			model.addAttribute("errMsg", "无法登陆，请联系管理员");
			return "../login";
		}

		session.setAttribute("user_id", user.getId());
		session.setAttribute("user_type", user.getS_11());
		session.setAttribute("type1", "admin");
		session.setAttribute("type2", "admin");
		session.setAttribute("name", user.getS_2());
		session.setAttribute("username", user.getS_0());
		
		UserLog userLog = new UserLog();
		userLog.setUser(user);
		userLog.setS_0("登录成功");
		userLog.setS_1(SystemUtils.getCurrentTimeToString(SystemUtils.timeFormat2));
		userLog.setS_2(user.getS_2());
		userLogMapper.insertObject(userLog);

		return "../jsp/index";
	}
	
	public void initLog(int user_id, Model model) {
		List<UserLog> list = userLogMapper.getObjectList("", "");
		List<UserLog> listUserLog = new ArrayList<UserLog>();
		for (UserLog temp : list) {
			if (user_id == temp.getUser().getId()) {
				listUserLog.add(temp);
			}
		}

		model.addAttribute("listUserLog", listUserLog);
	}

	@RequestMapping(value = "/updatepwd.do")
	public String updatepwd(HttpServletRequest request, User util, Model model) {

		HttpSession session = request.getSession();
		int user_id = (Integer) session.getAttribute("user_id");
		User userTmp = userMapper.selectObject(user_id);

		String oldPwd = util.getS_3();
		String newPwd = util.getS_4();
		String rePwd = util.getS_5();
		if (null == oldPwd || "".equals(oldPwd) || null == newPwd || "".equals(newPwd) || null == rePwd
				|| "".equals(rePwd)) {
			model.addAttribute("errMsg", "密码信息不能为空");
			model.addAttribute("util", userTmp);
			return "User/updatepwd";
		}

		if (!newPwd.equals(rePwd)) {
			model.addAttribute("errMsg", "确认密码不一致");
			model.addAttribute("util", userTmp);
			return "User/updatepwd";
		}

		if (newPwd.equals(oldPwd)) {
			model.addAttribute("errMsg", "旧密码不能与新密码一致");
			model.addAttribute("util", userTmp);
			return "User/updatepwd";
		}

		if (!oldPwd.equals(userTmp.getS_1())) {
			model.addAttribute("errMsg", "旧密码错误");
			model.addAttribute("util", userTmp);
			return "User/updatepwd";
		}
		userTmp.setS_1(newPwd);
		userMapper.updateObject(userTmp);

		model.addAttribute("util", userTmp);
		this.initLog(user_id, model);
		return "User/updateinfo";
	}

	@RequestMapping(value = "/updateinfo.do")
	public String updateinfo(HttpServletRequest request, User util, Model model) {
		userMapper.updateObject(util);
		model.addAttribute("util", util);
		model.addAttribute("errMsg", "个人信息修改成功");
		this.initLog(util.getId(), model);
		return "User/updateinfo";
	}

	@RequestMapping(value = "/beforepass.do")
	public String beforepass(HttpServletRequest request, User util, Model model) {
		HttpSession session = request.getSession();
		int user_id = (Integer) session.getAttribute("user_id");
		util = userMapper.selectObject(user_id);
		model.addAttribute("util", util);
		return "User/updatepwd";
	}

	@RequestMapping(value = "/beforeinfo.do")
	public String beforeinfo(HttpServletRequest request, User util, Model model) {
		HttpSession session = request.getSession();
		int user_id = (Integer) session.getAttribute("user_id");
		util = userMapper.selectObject(user_id);
		model.addAttribute("util", util);
		this.initLog(util.getId(), model);
		return "User/updateinfo";
	}
	
	@RequestMapping(value = "/register.do")
	public String register(HttpServletRequest request, User util, Model model) {
//		HttpSession session = request.getSession();
//		String code = (String) session.getAttribute("code");
//		String userCode = request.getParameter("code");
//		if (!code.equals(userCode)) {
//			model.addAttribute("errMsg", "验证码错误");
//			return "../register";
//		}
		List<User> listUser = userMapper.getObjectByName(util);
		if (null != listUser && listUser.size() > 0) {
			model.addAttribute("errMsg", "该用户名已经存在");
			return "../register";
		}
		util.setS_11("user");
		util.setS_12("Y");
		userMapper.insertObject(util);
		model.addAttribute("registerMsg", "恭喜您，注册成功！");
		return "../login";
	}

	@RequestMapping(value = "/initUtil.do")
	public String initUtil(HttpServletRequest request, Model model) {
		return "User/saveOrUpdate";
	}

	@RequestMapping(value = "/selectUtil.do")
	public String selectUtil(HttpServletRequest request, User util, Model model) {
		util = userMapper.selectObject(util.getId());
		model.addAttribute("util", util);
		return "User/saveOrUpdate";
	}

	@RequestMapping(value = "/updateUtil.do")
	public String updateUtil(HttpServletRequest request, User util, Model model) {
		String state = util.getS_12();
		util = userMapper.selectObject(util.getId());
		util.setS_12(state);
		userMapper.updateObject(util);
		return this.getAllUtil(request, util, model);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value = "/getAllUtil.do")
	public String getAllUtil(HttpServletRequest request, User util, Model model) {
		String field = request.getParameter("field");
		String fieldValue = request.getParameter("fieldValue");
		try {
			fieldValue = new String(fieldValue.getBytes("iso-8859-1"), "utf-8");
		} catch (Exception e) {
		}
		String pageNo = request.getParameter("pageModel.currentPageNo");
		int currentPageNo = 1;
		try {
			currentPageNo = Integer.parseInt(pageNo);
		} catch (Exception e) {
		}
		List<User> list = userMapper.getObjectList(field, fieldValue);
		PageModel pageModel = new PageModel();
		pageModel = pageModel.getUtilByController(list, currentPageNo);
		model.addAttribute("pageModel", pageModel);
		model.addAttribute("fieldValue", fieldValue);
		model.addAttribute("field", field);
		return "User/find";
	}

	@RequestMapping(value = "/deleteManyUtil.do")
	public String deleteManyUtil(HttpServletRequest request, User util, Model model) {
		String ids[] = request.getParameterValues("id");
		for (String id : ids) {
			util = new User();
			util.setId(Integer.parseInt(id));
			userMapper.deleteObject(util.getId());
		}
		return this.getAllUtil(request, util, model);
	}

	@RequestMapping(value = "/deleteUtil.do")
	public String deleteUtil(HttpServletRequest request, User util, Model model) {
		userMapper.deleteObject(util.getId());
		return this.getAllUtil(request, util, model);
	}

	@RequestMapping(value = "/saveOrUpdateObject.do")
	public String saveOrUpdateObject(HttpServletRequest request, User util, Model model) {
		List<User> list = userMapper.getObjectList("s_0", util.getS_0());
		if (0 == util.getId()) {
			if (list.size() > 0) {
				model.addAttribute("util", util);
				model.addAttribute("errMsg", "该信息已存在!");
				return "User/saveOrUpdate";
			}
			userMapper.insertObject(util);
		} else {
			if (list.size() > 1) {
				model.addAttribute("util", util);
				model.addAttribute("errMsg", "该信息已存在!");
				return "User/saveOrUpdate";
			}
			userMapper.updateObject(util);
		}
		return this.getAllUtil(request, util, model);
	}

	@RequestMapping(value = "/upload.do")
	public String upload(@RequestParam MultipartFile[] myfiles, HttpServletRequest request, User util, Model model)
			throws IOException {
		for (MultipartFile file : myfiles) {
			if (!file.isEmpty()) {
				String fileName = file.getOriginalFilename();
				String path = request.getSession().getServletContext().getRealPath("image") + File.separator;
				String uploadName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + fileName;
				File localFile = new File(path + uploadName);
				file.transferTo(localFile);
				util.setS_0(uploadName);
				util.setS_1(fileName);
				util.setS_2(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			}

			if (0 == util.getId()) {
				userMapper.insertObject(util);
			} else {
				userMapper.updateObject(util);
			}
			return this.getAllUtil(request, util, model);
		}

		return this.getAllUtil(request, util, model);
	}
}
