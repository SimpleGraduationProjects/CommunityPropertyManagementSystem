<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<title><spring:message code="system_name" /></title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/jsp/css/reset.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/jsp/css/index.css" />
<script
	src="${pageContext.request.contextPath}/jsp/js/jquery-1.7.2.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/jsp/js/Validform_v5.3.2_min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/jsp/js/passwordStrength-min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/jsp/js/loand.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/jsp/js/zhuce.js"
	type="text/javascript"></script>
</head>
<style>
.registerform {
	margin: 0 105px 15px;
	padding-top: 45px;
}

.registerform .inputxt {
	padding: 3px 2px;
}

.registerform td {
	display: block;
	float: left;
}

.phpadd td {
	padding-bottom: 20px;
}

.fangbiang {
	margin-left: 50px;
}
</style>
<body>

	<div class="warrper">
		<div class="indexline"></div>
		<div class="content w1000">
			<div class="information">
				<br /> <br />
				<div class="inputout">
					<h3>
						<spring:message code="system_name" />
						- 注册信息
					</h3>
					<br />
					<div class="zcxx">
						<form class="registerform" method="post"
							action="${pageContext.request.contextPath}/User/register.do">
							<table>
								<tr>
									<td class="zcxxa"><span>*</span>帐号：</td>
									<td style="width: 202px;"><input type="text" name="s_0"
										class="inputxt" datatype="s3-18" errormsg="昵称至少3个字符,最多18个字符！" /></td>
									<td>
										<div class="info">
											<span class="Validform_checktip">昵称至少3个字符,最多18个字符</span><span
												class="dec"><s class="dec1">&#9670;</s><s
												class="dec2">&#9670;</s></span>
										</div>
									</td>
								</tr>
								<tr>
									<td class="zcxxa"><span>*</span>密码：</td>
									<td style="width: 202px;"><input type="text" name="s_1"
										class="inputxt" datatype="s3-18" errormsg="昵称至少3个字符,最多18个字符！" /></td>
									<td>
										<div class="info">
											<span class="Validform_checktip">昵称至少3个字符,最多18个字符</span><span
												class="dec"><s class="dec1">&#9670;</s><s
												class="dec2">&#9670;</s></span>
										</div>
									</td>
								</tr>
								<tr>
									<td class="zcxxa"><span>*</span>性别：</td>
									<td><input type="radio" value="男" name="s_4" id="male"
										class="pr1" datatype="*" nullmsg="请选择性别！" errormsg="请选择性别！" />
										<label for="male">男</label> <input type="radio" value="女"
										name="s_4" id="female" class="pr1 pr2" /> <label for="female">女</label></td>
									<td>
										<div class="info">
											<span class="Validform_checktip">请告诉我们您的性别</span><span
												class="dec"><s class="dec1">&#9670;</s><s
												class="dec2">&#9670;</s></span>
										</div>
									</td>
								</tr>

								<tr class="phpadd">
									<td class="zcxxa"><span>*</span>手机号码：</td>
									<td><input type="text" name="s_5" class="inputxt"
										datatype="s11-11" nullmsg="请输入您的手机号码！" errormsg="请输入您的手机号码！" /></td>
									<td>
										<div class="info">
											<span class="Validform_checktip">请输入您的手机号码</span><span
												class="dec"><s class="dec1">&#9670;</s><s
												class="dec2">&#9670;</s></span>
										</div>
									</td>
								</tr>
								<tr>
									<td class="zcxxa"></td>
									<td colspan="2" style="padding: 40px 0 18px 0;"><input
										type="submit" value="提 交" class="submita" /> <input
										type="reset" value="重 置" class="submita" />
										&nbsp;&nbsp;&nbsp;
										<font color=red>${errMsg }
									</font></td>
								</tr>
							</table>
						</form>

					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<i></i>
		</div>
	</div>

</body>
</html>