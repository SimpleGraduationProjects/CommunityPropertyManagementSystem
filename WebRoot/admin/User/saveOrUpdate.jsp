<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../add_common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�û��б�</title>
</head>
<body>
	<form
		action="${pageContext.request.contextPath}/User/saveOrUpdateObject.do"
		method="post">
		<c:if test="${util.id != null}">
			<input name="id" value="${util.id }" type="hidden" />
			<input name="s_12" value="${util.s_12 }" type="hidden" />
		</c:if>

		<c:if test="${util.id == null}">
			<input name="s_12" value="Y" type="hidden" />
		</c:if>
		<div class="margin clearfix">
			<div class="article_style">
				<div class="add_content" id="form-article-add">
					<ul>
						<li class="clearfix Mandatory"><label class="label_name"><i>*</i>�û���</label>
							<span class="formControls col-10"> <input
								placeholder="�û���" type="text" name="s_0" value="${util.s_0 }"
								class="col-xs-3 col-sm-5"> <label class="label_name"><i>*</i>����</label>
								<input placeholder="����" type="text" name="s_1"
								value="${util.s_1 }" class="col-xs-3 col-sm-5">
						</span></li>


						<li class="clearfix Mandatory"><label class="label_name"><i>*</i>����</label>
							<span class="formControls col-10"> <input placeholder="����"
								type="text" name="s_2" value="${util.s_2 }"
								class="col-xs-3 col-sm-5"> <label class="label_name">��������</label>
								<input placeholder="��������" type="text" name="s_3"
								value="${util.s_3 }" onClick="WdatePicker();" id="datemin"
								class="input-text Wdate" style="width: 184px;">
						</span></li>



						<li class="clearfix Mandatory"><label class="label_name">�Ա�</label>
							<span class="formControls col-10"> <span
								class="add_date l_f"> <label><input name="s_4"
										type="radio" class="ace"
										<c:if test="${util.s_4 != 'Ů' }">checked</c:if> value="��" /><span
										class="lbl"> ��</span> </label>&nbsp; <label><input name="s_4"
										type="radio" class="ace"
										<c:if test="${util.s_4 == 'Ů'}">checked</c:if> value="Ů"><span
										class="lbl">Ů</span> </label>
							</span> <label class="label_name" style="margin-left: 413px;">��ϵ��ʽ</label>
								<input placeholder="��ϵ��ʽ" type="text" name="s_5"
								value="${util.s_5 }" class="col-xs-3 col-sm-5">
						</span></li>

						<li class="clearfix Mandatory"><label class="label_name">
								QQ</label> <span class="formControls col-10"> <input
								placeholder="QQ" type="text" name="s_6" value="${util.s_6 }"
								class="col-xs-3 col-sm-5"> <label class="label_name">
									΢��</label> <input placeholder="΢��" type="text" name="s_7"
								value="${util.s_7 }" class="col-xs-3 col-sm-5">
						</span></li>

						<li class="clearfix Mandatory"><label class="label_name">
								����</label> <span class="formControls col-10"> <input
								placeholder="����" type="text" name="s_8" value="${util.s_8 }"
								class="col-xs-3 col-sm-5"> <label class="label_name">
									��ͥסַ</label> <input placeholder="��ͥסַ" type="text" name="s_9"
								value="${util.s_9 }" class="col-xs-3 col-sm-5">
						</span></li>


						<li class="clearfix"><label class="label_name"><i>*</i>�������</label>
							<span class="formControls col-8"><select
								class="form-control " style="width: 184px;" name="s_11">
									<option <c:if test="${util.s_11 == 'user'}">selected</c:if>
										value="user">
										<spring:message code="sys_user" />
									</option>
									<c:if test="${user_type == 'root'}">
									<option <c:if test="${util.s_11 == 'admin'}">selected</c:if>
										value="admin">
										<spring:message code="sys_admin" />
									</option>
									
									
									<option <c:if test="${util.s_11 == 'root'}">selected</c:if>
										value="root">
										<spring:message code="sys_root" />
									</option>
									</c:if>
							</select> </span></li>

						<li class="clearfix"><label class="label_name">��ע</label> <span
							class="formControls col-5"> <textarea name="s_15"
									style="margin-left: -1px; width: 980px; height: 100px">${util.s_15 }</textarea>
						</span></li>
					</ul>
					<div class="Button_operation">
						<button onclick="testEditor();" class="btn btn-primary radius"
							type="submit">���沢�ύ</button>
						<button type="button" class="btn btn-default radius" onclick="javascript:window.location.href = '${pageContext.request.contextPath}/User/getAllUtil.do';">&nbsp;&nbsp;ȡ��&nbsp;&nbsp;</button>
						<font style="margin-left: 20px;" color=red> ${errMsg } </font>
					</div>
				</div>
			</div>
		</div>

	</form>
</body>
</html>

