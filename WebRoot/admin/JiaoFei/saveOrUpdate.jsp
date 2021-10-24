<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../add_common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�ɷ���Ϣ���</title>
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
							<label class="form-label col-2">�ɷѱ�ţ�</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" readonly
									value="${util.s_0 }" placeholder="�ɷѱ��" id="" name="s_0">
							</div>
							<label class="form-label col-2">�ɷ����ڣ�</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" onClick="WdatePicker();" id="datemin"
									class="input-text Wdate" style="width: 186px;"
									value="${util.s_1 }" placeholder="�ɷ�����" id="" name="s_1">
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">�ɷ����ͣ�</label>
							<div class="formControls col-10" style="width: 400px;">
								<%-- <input type="text" class="input-text" value="${util.s_2 }"
									placeholder="�ɷ�����" id="" name="s_2"> --%>
									
									<select name="s_2" class="select">
						<option <c:if test="${util.s_2 == 'ˮ��'}">selected</c:if>
							value="ˮ��">ˮ��</option>
						<option <c:if test="${util.s_2 == '���'}">selected</c:if>
							value="���">���</option>
						<option <c:if test="${util.s_2 == 'ȼ����'}">selected</c:if>
							value="ȼ����">ȼ����</option>
						<option <c:if test="${util.s_2 == 'ͣ����'}">selected</c:if>
							value="ͣ����">ͣ����</option>
						<option <c:if test="${util.s_2 == '��ҵ��'}">selected</c:if>
							value="��ҵ��">��ҵ��</option>
					</select>
							</div>
							<label class="form-label col-2">�ɷѷ��ţ�</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_3 }"
									placeholder="�ɷѷ���" id="" name="s_3">
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">�ɷ�ԭ��</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text" value="${util.s_4 }"
									placeholder="�ɷ�ԭ��" id="" name="s_4">
							</div>
							<label class="form-label col-2">�ɷѽ�</label>
							<div class="formControls col-10" style="width: 400px;">
								<input type="text" class="input-text"
									onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)"
									value="${util.s_5 }" placeholder="�ɷѽ��" id="" name="s_5">
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">�ɷ�״̬��</label>
							<div class="formControls col-10" style="width: 400px;">
								<c:if test="${util.id == null }">
									<select class="form-control " style="width: 186px;" name="s_6">
										<option <c:if test="${util.s_6 == 'δ�ɷ�'}">selected</c:if>
											value="δ�ɷ�">δ�ɷ�</option>
										<c:if test="${user_type == 'admin' }">
											<option <c:if test="${util.s_6 == '�ѽɷ�'}">selected</c:if>
												value="�ѽɷ�">�ѽɷ�</option>
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
										<option <c:if test="${util.s_6 == 'δ�ɷ�'}">selected</c:if>
											value="δ�ɷ�">δ�ɷ�</option>
										<option <c:if test="${util.s_6 == '�ѽɷ�'}">selected</c:if>
											value="�ѽɷ�">�ѽɷ�</option>
									</select>
								</c:if>
							</div>
						</div>

						<div class="clearfix cl">
							<label class="form-label col-2">��ע��</label>
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
