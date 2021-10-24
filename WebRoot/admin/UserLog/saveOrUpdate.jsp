<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../add_common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录日志添加</title>
</head>
<body>
	<form
		action="${pageContext.request.contextPath}/UserLog/saveOrUpdateObject.do"
		method="post">
		<c:if test="${util.id != null}">
			<input name="id" value="${util.id }" type="hidden" />
		</c:if>

		<div class="margin clearfix">
			<div class="article_style">
				<div class="add_content" id="form-article-add">
					<ul>
						<li class="clearfix Mandatory"><label class="label_name">
								登录人</label> <span class="formControls col-8"> <c:if
									test="${(user_type == 'user' && (util.id == null || (util.id != null && util.user.id == id)))}">
									<select class="form-control " style="width:184px;"
										name="user.id">
										<c:forEach var="typeTmp" items="${listUser}">
											<c:if test="${typeTmp.id == id }">
												<option value="${typeTmp.id }">${typeTmp.s_2 }</option>
											</c:if>
										</c:forEach>
									</select>
								</c:if> <c:if
									test="${(user_type != 'user' || (util.id != null && util.user.id != id))}">
									<select class="form-control " style="width:184px;"
										name="user.id">
										<c:forEach var="typeTmp" items="${listUser}">
											<option
												<c:if test="${util.user.id !=null &&  typeTmp.id == util.user.id }">
																			selected
																			</c:if>
												<c:if test="${user_type == 'user' && typeTmp.id == id && util.id == null }">
																			selected
																			</c:if>
												value="${typeTmp.id }">${typeTmp.s_0 }</option>
										</c:forEach>
									</select>
								</c:if> </span></li>
						<li class="clearfix Mandatory"><label class="label_name">
								登录编号</label> <span class="formControls col-10"> <input
								placeholder="登录编号" type="text" name="s_0" value="${util.s_0 }"
								class="col-xs-3 col-sm-5"> <label class="label_name">
									登录日期</label> <input placeholder="登录日期" type="text" name="s_1"
								value="${util.s_1 }" onClick="WdatePicker();" id="datemin"
								class="input-text Wdate" style="width:186px;">
						</span></li>

						<li class="clearfix"><label class="label_name">备注</label> <span
							class="formControls col-5"> <textarea name="s_2"
									style="margin-left:-1px;width: 980px;height: 100px">${util.s_2 }</textarea>
						</span></li>
					</ul>
					<div class="Button_operation">
						<c:if
							test="${util.id == null || user_type == 'admin' || (user_type == 'user' && util.user.id == id)}">
							<button onclick="testEditor();" class="btn btn-primary radius"
								type="submit">保存并提交</button>
							<button class="btn btn-default radius" type="reset">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
							<font style="margin-left:20px;" color=red> ${errMsg } </font>
						</c:if>
					</div>
				</div>
			</div>
		</div>

	</form>
</body>
</html>
