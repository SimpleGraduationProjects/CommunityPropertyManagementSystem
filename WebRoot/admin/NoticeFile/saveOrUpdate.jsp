<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../add_common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�������</title>
</head>
<body>
	<form
		action="${pageContext.request.contextPath}/NoticeFile/upload.do" enctype="multipart/form-data" 		method="post">
		<c:if test="${util.id != null}">
			<input name="id" value="${util.id }" type="hidden" />
		</c:if>

		<div class="margin clearfix">
			<div class="article_style">
				<div class="add_content" id="form-article-add">
					<ul>
						<div class="clearfix cl">
							<label class="form-label col-2">������</label>
							<div class="formControls col-10" style="margin-left:-2px;">
								<input type="file" name="myfiles" class="col-xs-3 col-sm-3">
								<font size="2" color="red">�ļ�Ϊ�ձ�ʾ���޸��ļ�</font>
							</div>
						</div>
						<div class="clearfix cl">
							<label class="form-label col-2">�������ƣ�</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_3 }" placeholder="��������"
									id="" name="s_3">
							</div>
							<label class="form-label col-2">�������ͣ�</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_4 }" placeholder="��������"
									id="" name="s_4">
							</div>
					</div>
						<div class="clearfix cl">
							<label class="form-label col-2">�������ݣ�</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_5 }" placeholder="��������"
									id="" name="s_5">
							</div>
						</div>

						<div class="clearfix cl">                                                         
							<label class="form-label col-2">��ע��</label>                              
							<div class="formControls col-10">                                               
								<textarea name="s_6"                                                         
									style="margin-left:-1px;width: 910px;height: 100px">${util.s_6 }</textarea>
							</div>                                                                            
						</div>                                                                              
					</ul>
					<div class="Button_operation">
					<c:if test="${util.id == null || user_type == 'admin'}">
						<button onclick="testEditor();" class="btn btn-primary radius"
							type="submit">���沢�ύ</button>
						<button class="btn btn-default radius" type="reset">&nbsp;&nbsp;ȡ��&nbsp;&nbsp;</button><font               
					style="margin-left:20px;" color=red>                            
						${errMsg } </font> 
		</c:if>
					</div>
				</div>
			</div>
		</div>

	</form>
</body>
</html>
