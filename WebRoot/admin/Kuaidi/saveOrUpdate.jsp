<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../add_common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>快递查询添加</title>
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
							<label class="form-label col-2">快递公司：</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_0 }" placeholder="快递公司"
									id="" name="s_0">
							</div>
							<label class="form-label col-2">单号：</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_1 }" placeholder="单号"
									id="" name="s_1">
							</div>
					</div>
						<div class="clearfix cl">
							<label class="form-label col-2">收货人：</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_2 }" placeholder="收货人"
									id="" name="s_2">
							</div>
							<label class="form-label col-2">联系方式：</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_3 }" placeholder="联系方式"
									id="" name="s_3">
							</div>
					</div>
						<div class="clearfix cl">
							<label class="form-label col-2">详细地址：</label>
							<div class="formControls col-10" style="width:400px;">                     
								<input type="text" 	class="input-text"  value="${util.s_4 }" placeholder="详细地址"
									id="" name="s_4">
							</div>
							<label class="form-label col-2">状态：</label>
							<div class="formControls col-10" style="width:400px;">                     
								<c:if test="${util.id == null }">                                                
									<select class="form-control " style="width:186px;" name="s_5">    
										<option <c:if test="${util.s_5 == '未签收'}">selected</c:if>        
											value="未签收">未签收</option>                                             
										<c:if test="${user_type == 'admin' }">                                       
											<option <c:if test="${util.s_5 == '已签收'}">selected</c:if>    
												value="已签收">已签收</option>                                       
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
										<option <c:if test="${util.s_5 == '未签收'}">selected</c:if>        
											value="未签收">未签收</option>                                             
										<option <c:if test="${util.s_5 == '已签收'}">selected</c:if>      
											value="已签收">已签收</option>                                         
									</select>                                                                        
								</c:if>                                                                            
							</div>
					</div>

						<div class="clearfix cl">                                                         
							<label class="form-label col-2">备注：</label>                              
							<div class="formControls col-10">                                               
								<textarea name="s_6"                                                         
									style="margin-left:-1px;width: 910px;height: 100px">${util.s_6 }</textarea>
							</div>                                                                            
						</div>                                                                              
					</ul>
					<div class="Button_operation">
					<c:if test="${util.id == null || (user_type == 'admin' && util.s_5 == '未签收')}">
						<button onclick="testEditor();" class="btn btn-primary radius"
							type="submit">保存并提交</button>
						<button class="btn btn-default radius" type="reset">&nbsp;&nbsp;取消&nbsp;&nbsp;</button><font               
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
