<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../add_common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>��ݲ�ѯ���</title>
</head>
<body>
	<form
		action="${pageContext.request.contextPath}/Kuaidi/saveOrUpdateObject.do" 		method="post">
		<c:if test="${util.id != null}">
			<input name="id" value="${util.id }" type="hidden" />
		</c:if>

		<div class="margin clearfix">
			<div class="article_style">
				<div class="add_content" id="form-article-add">
					<ul>
						<div class="clearfix cl">
							<label class="form-label col-2">��ݹ�˾��</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_0 }" placeholder="��ݹ�˾"
									id="" name="s_0">
							</div>
							<label class="form-label col-2">���ţ�</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_1 }" placeholder="����"
									id="" name="s_1">
							</div>
					</div>
						<div class="clearfix cl">
							<label class="form-label col-2">�ջ��ˣ�</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_2 }" placeholder="�ջ���"
									id="" name="s_2">
							</div>
							<label class="form-label col-2">��ϵ��ʽ��</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_3 }" placeholder="��ϵ��ʽ"
									id="" name="s_3">
							</div>
					</div>
						<div class="clearfix cl">
							<label class="form-label col-2">��ϸ��ַ��</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_4 }" placeholder="��ϸ��ַ"
									id="" name="s_4">
							</div>
							<label class="form-label col-2">״̬��</label>
							<div class="formControls col-10" style="width:400px;">                     
								<c:if test="${util.id == null }">                                                
									<select class="form-control " style="width:186px;" name="s_5">    
										<option <c:if test="${util.s_5 == 'δǩ��'}">selected</c:if>        
											value="δǩ��">δǩ��</option>                                             
										<c:if test="${user_type == 'admin' }">                                       
											<option <c:if test="${util.s_5 == '��ǩ��'}">selected</c:if>    
												value="��ǩ��">��ǩ��</option>                                       
										</c:if>                                                                        
									</select>                                                                        
								</c:if>                                                                            
								<c:if test="${util.id != null }">                                                
									<c:if test="${user_type != 'admin' }">                                         
										<input name="s_5" value="${util.s_5 }" type="hidden" />
									</c:if>                                                                          
									<select class="form-control "                                                  
										<c:if test="${user_type != 'admin' }">disabled="disabled"</c:if>           
										style="width:186px;" name="s_5">                                  
										<option <c:if test="${util.s_5 == 'δǩ��'}">selected</c:if>        
											value="δǩ��">δǩ��</option>                                             
										<option <c:if test="${util.s_5 == '��ǩ��'}">selected</c:if>      
											value="��ǩ��">��ǩ��</option>                                         
									</select>                                                                        
								</c:if>                                                                            
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
					<c:if test="${util.id == null || (user_type == 'admin' && util.s_5 == 'δǩ��')}">
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
