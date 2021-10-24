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
<script type="text/javascript">
	var registerMsg = "${registerMsg}";
	if (null != registerMsg && '' != registerMsg)
		alert(registerMsg);
	function flushCode() {
		document.getElementById("codeimg").src = "imageServlet?random="
				+ Math.random();
	}
</script>
</head>
<body>

	<div class="warrper">
		<div class="indexline"></div>
		<div class="content w1000">
			<div class="indext-content clearFloat">
				<div class="index-left  floatLeft">
					<img src="${pageContext.request.contextPath}/jsp/images/bj.png"
						alt="">
				</div>
				<div class="index-right floatRight">
					<div class="index-land">
						<h3><spring:message code="system_name" /></h3>
						<form class="registerform" method="post"
							action="${pageContext.request.contextPath}/User/login.do">
							<table width="100%">
								<tr>
									<td class="fleft">账 &nbsp; 号：</td>
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
									<td class="fleft">密 &nbsp; 码：</td>
									<td style="width: 210px;"><input type="password" value=""
										name="password" class="inputxt" plugin="passwordStrength"
										datatype="*3-18" nullmsg="请输入密码！" errormsg="密码至少3个字符,最多18个字符！" />
									</td>
									<td>
										<div class="info">
											<span class="Validform_checktip">密码至少3个字符,最多18个字符</span><span
												class="dec"><s class="dec1">&#9670;</s><s
												class="dec2">&#9670;</s></span>
										</div>
									</td>
								</tr>
								<tr class="yanzheng clearFloat">
									<td class="fleft">验证码：</td>
									<td class="yanimg"><input type="text" class="inputxta"><img
										id="codeimg" src="imageServlet" onClick="flushCode()" /> <a
										onClick="flushCode()" class="yana">看不清？换一张</a></td>
								</tr>

								<tr>
									<td colspan="2" style="padding: 40px 0 18px 0;"><input
										type="submit" value="提 交" class="submita" /> <input
										type="reset" value="重 置" class="submita" /></td>
								</tr>
							</table>
							<div class="wjma">
								<a href="">没有账号？</a> | <a href="">忘记密码？</a>
							</div>
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