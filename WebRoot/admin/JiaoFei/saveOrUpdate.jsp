<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../add_common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>缴费信息添加</title>
</head>
<body>
	<form
		action="${pageContext.request.contextPath}/JiaoFei/saveOrUpdateObject.do"
		method="post">
		<c:if test="${util.id != null}">
			<input name="id" value="${util.id }" type="hidden" />
		</c:if>

		<div class="margin clearfix">
			<div class="article_style">
				<div class="add_content" id="form-article-add">
					<ul>
						<div class="clearfix cl">
							<div class="Add_p_s">
								<label class="form-label col-2">业主：</label>
								<div class="formControls col-2">
									<span class="select-box"> <c:if
							test="${(user_type == 'user' && (util.id == null || (util.id != null && util.user.id == user_id)))}">
							<select class="select" name="user.id">
								<c:forEach var="type" items="${listUser}">
									<c:if test="${type.id == user_id }">
										<option value="${type.id }">${type.s_2 }</option>
									</c:if>
								</c:forEach>
							</select>
						</c:if> <c:if
							test="${(user_type != 'user' || (util.id != null && util.user.id != user_id))}">
							<select class="select" name="user.id">
								<c:forEach var="type" items="${listUser}">
									<option
										<c:if test="${util.user.id !=null &&  type.id == util.user.id }">
																			selected
																			</c:if>
										<c:if test="${user_type == 'user' && types.id == id && util.id == null }">
																			selected
																			</c:if>
										value="${type.id }">${type.s_0 }</option>
								</c:forEach>
							</select>
						</c:if>
									</span>
								</div>
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">缴费编号：</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" readonly
									value="${util.s_0 }" placeholder="缴费编号" id="" name="s_0">
							</div>
							<label class="form-label col-2">缴费日期：</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" onClick="WdatePicker();" id="datemin"
									class="input-text Wdate" style="width: 186px;"
									value="${util.s_1 }" placeholder="缴费日期" id="" name="s_1">
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">缴费类型：</label>
							<div class="formControls col-10" style="width: 400px;">
								<%-- <input type="text" class="input-text" value="${util.s_2 }"
									placeholder="缴费类型" id="" name="s_2"> --%>
									
									<select name="s_2" class="select">
						<option <c:if test="${util.s_2 == '水费'}">selected</c:if>
							value="水费">水费</option>
						<option <c:if test="${util.s_2 == '电费'}">selected</c:if>
							value="电费">电费</option>
						<option <c:if test="${util.s_2 == '燃气费'}">selected</c:if>
							value="燃气费">燃气费</option>
						<option <c:if test="${util.s_2 == '停车费'}">selected</c:if>
							value="停车费">停车费</option>
						<option <c:if test="${util.s_2 == '物业费'}">selected</c:if>
							value="物业费">物业费</option>
					</select>
							</div>
							<label class="form-label col-2">缴费房号：</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_3 }"
									placeholder="缴费房号" id="" name="s_3">
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">缴费原因：</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_4 }"
									placeholder="缴费原因" id="" name="s_4">
							</div>
							<label class="form-label col-2">缴费金额：</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text"
									onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)"
									value="${util.s_5 }" placeholder="缴费金额" id="" name="s_5">
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">缴费状态：</label>
							<div class="formControls col-10" style="width: 400px;">
								<c:if test="${util.id == null }">
									<select class="form-control " style="width: 186px;" name="s_6">
										<option <c:if test="${util.s_6 == '未缴费'}">selected</c:if>
											value="未缴费">未缴费</option>
										<c:if test="${user_type == 'admin' }">
											<option <c:if test="${util.s_6 == '已缴费'}">selected</c:if>
												value="已缴费">已缴费</option>
										</c:if>
									</select>
								</c:if>
								<c:if test="${util.id != null }">
									<c:if test="${user_type != 'admin' }">
										<input name="s_6" value="${util.s_6 }" type="hidden" />
									</c:if>
									<select class="form-control "
										<c:if test="${user_type != 'admin' }">disabled="disabled"</c:if>
										style="width: 186px;" name="s_6">
										<option <c:if test="${util.s_6 == '未缴费'}">selected</c:if>
											value="未缴费">未缴费</option>
										<option <c:if test="${util.s_6 == '已缴费'}">selected</c:if>
											value="已缴费">已缴费</option>
									</select>
								</c:if>
							</div>
						</div>

						<div class="clearfix cl">
							<label class="form-label col-2">备注：</label>
							<div class="formControls col-10">
								<textarea name="s_7"
									style="margin-left: -1px; width: 910px; height: 100px">${util.s_7 }</textarea>
							</div>
						</div>
					</ul>
					<div class="Button_operation">
						<c:if
							test="${util.id == null || user_type == 'admin' || (user_type == 'user' && util.user.id == id)}">
							<button onclick="testEditor();" class="btn btn-primary radius"
								type="submit">保存并提交</button>
							<button class="btn btn-default radius" type="reset">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
							<font style="margin-left: 20px;" color=red> ${errMsg } </font>
						</c:if>
					</div>
				</div>
			</div>
		</div>

	</form>
</body>
</html>
