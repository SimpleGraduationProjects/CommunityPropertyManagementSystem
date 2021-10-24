<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../list_common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�û��б�</title>
</head>
<body>
	<div class="page-content clearfix">
		<div id="Member_Ratings">
			<div class="d_Confirm_Order_style">
				<!---->
				<div class="border clearfix">
					<span class="l_f"> <a
						href="${pageContext.request.contextPath}/User/initUtil.do"
						class="btn btn-warning"><i class="icon-plus"></i>����û�</a> <a
						onClick="member_delMany();" class="btn btn-danger"><i
							class="icon-trash"></i>����ɾ��</a>
					</span>
				</div>
				<!---->
				<div class="table_menu_list">
					<form
						action="${pageContext.request.contextPath}/User/deleteManyUtil.do"
						name="myform" id="myform" method="post">

						<table class="table table-striped table-bordered table-hover"
							id="sample-table">
							<thead>
								<tr>
									<th width="90"><label><input type="checkbox"
											class="ace"><span class="lbl"></span> ȫѡ</label></th>
									<th>�û���</th>		
									<th>��������</th>
									<th>�Ա�</th>
									<th>��ϵ��ʽ</th>
									<th>QQ</th>
									<th>�������</th>
									<th>״̬</th>
									<th>����</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${fn:length(pageModel.list) < 1}">
									<tr class="text-c va-m">
										<td colspan=52>�޼�¼</td>
									</tr>
								</c:if>
								<c:forEach var="tmp" items="${pageModel.list}">
									<tr>
										<td><label><input type="checkbox" name="id"
												value="${tmp.id }" class="ace"><span class="lbl"></span>
										</label></td>
										<td>${tmp.s_0 }</td>
										<td>${tmp.s_3 }</td>
										<td>${tmp.s_4 }</td>
										<td>${tmp.s_5 }</td>
										<td>${tmp.s_6 }</td>
										<td><c:if test="${tmp.s_11 == 'admin'}">
												<spring:message code="sys_admin" />
											</c:if> <c:if test="${tmp.s_11 == 'user'}">
												<spring:message code="sys_user" />
											</c:if>
											<c:if test="${tmp.s_11 == 'root'}">
												<spring:message code="sys_root" />
											</c:if></td>
										<td class="td-status"><c:if test="${tmp.s_12 == 'Y'}">
												<span class="label label-success radius">������</span>
											</c:if> <c:if test="${tmp.s_12 == 'N'}">
												<span class="label label-defaunt radius">��ͣ��</span>
											</c:if></td>
										<td class="td-manage"><c:if test="${tmp.s_12 == 'Y'}">
												<a
													onClick="member_stop('${pageContext.request.contextPath}/User/updateUtil.do?s_12=N&id=' + ${tmp.id })"
													href="javascript:;" title="ͣ��"
													class="btn btn-xs btn-success"><i
													class="icon-ok bigger-120"></i> </a>
											</c:if> <c:if test="${tmp.s_12 == 'N'}">
												<a style="text-decoration: none" class="btn btn-xs "
													onClick="member_start('${pageContext.request.contextPath}/User/updateUtil.do?s_12=Y&id=' + ${tmp.id })"
													href="javascript:;" title="����"><i
													class="icon-ok bigger-120"></i> </a>
											</c:if> <a title="�༭" class="btn btn-xs btn-info"
											href="${pageContext.request.contextPath}/User/selectUtil.do?id=${tmp.id}"><i
												class="icon-edit bigger-120"></i> </a> <a title="ɾ��"
											href="javascript:;"
											onclick="member_del('${pageContext.request.contextPath}/User/deleteUtil.do?id=${tmp.id}')"
											class="btn btn-xs btn-warning"><i
												class="icon-trash  bigger-120"></i> </a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	jQuery(function($) {
		 $('#sample-table').dataTable( {
			"aaSorting": [[ 1, "desc" ]],//Ĭ�ϵڼ�������
			"bStateSave": true,//״̬����
			"aoColumnDefs": [
				  //{"bVisible": false, "aTargets": [ 3 ]} //�����е�������ʾ
				  {"orderable":false,"aTargets":[0,8]}// ָ���в���������
			] } );
	});
</script>
