<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../add_common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ס�����</title>
</head>
<body>
	<form
		action="${pageContext.request.contextPath}/ZhuFang/saveOrUpdateObject.do"
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
								<label class="form-label col-2">ҵ����</label>
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
							<label class="form-label col-2">¥�����ƣ�</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_0 }"
									placeholder="¥������" id="" name="s_0">
							</div>
							<label class="form-label col-2">Ǩ��ʱ�䣺</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" onClick="WdatePicker();" id="datemin"
									class="input-text Wdate" style="width: 186px;"
									value="${util.s_1 }" placeholder="Ǩ��ʱ��" id="" name="s_1">
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">ס�����ͣ�</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_2 }"
									placeholder="ס������" id="" name="s_2">
							</div>
							<label class="form-label col-2">¥�Ԫ��</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_3 }"
									placeholder="¥�Ԫ" id="" name="s_3">
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">���ţ�</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_4 }"
									placeholder="����" id="" name="s_4">
							</div>
							<label class="form-label col-2">���ͣ�</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_5 }"
									placeholder="����" id="" name="s_5">
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">����</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_6 }"
									placeholder="����" id="" name="s_6">
							</div>
							<label class="form-label col-2">���������</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_7 }"
									placeholder="�������" id="" name="s_7">
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">ס�����ܣ�</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_8 }"
									placeholder="ס������" id="" name="s_8">
							</div>
						</div>

						<div class="clearfix cl">
							<label class="form-label col-2">��ע��</label>
							<div class="formControls col-10">
								<textarea name="s_9"
									style="margin-left: -1px; width: 910px; height: 100px">${util.s_9 }</textarea>
							</div>
						</div>
					</ul>
					<div class="Button_operation">
						<c:if
							test="${util.id == null || user_type == 'admin' || (user_type == 'user' && util.user.id == id)}">
							<button onclick="testEditor();" class="btn btn-primary radius"
								type="submit">���沢�ύ</button>
							<button class="btn btn-default radius" type="reset">&nbsp;&nbsp;ȡ��&nbsp;&nbsp;</button>
							<font style="margin-left: 20px;" color=red> ${errMsg } </font>
						</c:if>
					</div>
				</div>
			</div>
		</div>

	</form>
</body>
</html>
