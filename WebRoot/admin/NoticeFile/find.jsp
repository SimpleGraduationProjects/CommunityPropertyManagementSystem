<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../list_common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�����б�</title>
</head>
<body>
	<div class="page-content clearfix">
		<div id="Member_Ratings">
			<div class="d_Confirm_Order_style">
				
				<c:if test="${user_type == 'admin'}"><div class="border clearfix">
					<span class="l_f"> <a
						href="${pageContext.request.contextPath}/NoticeFile/initUtil.do"
						class="btn btn-warning"><i class="icon-plus"></i>��ӹ���</a> <a
						onClick="member_delMany();" class="btn btn-danger"><i
							class="icon-trash"></i>����ɾ��</a> </span>
				</div></c:if>
				
				<div class="table_menu_list">
					<form
						action="${pageContext.request.contextPath}/NoticeFile/deleteManyUtil.do"
						name="myform" id="myform" method="post">

						<table class="table table-striped table-bordered table-hover"
							id="sample-table">
							<thead>
								<tr>
									<th width="90"><label><input type="checkbox"
											class="ace"><span class="lbl"></span> ȫѡ</label></th>
								<th width="160">ͼƬ</th>
									<th width="100">�ļ���</th>
									<th width="100">�ϴ�ʱ��</th>
									<th width="100">��������</th>
									<th width="100">��������</th>
									<th width="100">��������</th>
									<th width="100">����</th>
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
								<th><img src="${pageContext.request.contextPath}/upload/${tmp.s_0}" width="160" height="60"/></th>
										<td>${tmp.s_1 }</td>
										<td>${tmp.s_2 }</td>
										<td>${tmp.s_3 }</td>
										<td>${tmp.s_4 }</td>
										<td>${tmp.s_5 }</td>
										<td class="td-manage"><c:if test="${user_type == 'admin'}"><a title="�༭" class="btn btn-xs btn-info"
											href="${pageContext.request.contextPath}/NoticeFile/selectUtil.do?id=${tmp.id }"><i
												class="icon-edit bigger-120"></i> </a> <a title="ɾ��"
											href="javascript:;"
											onclick="member_del('${pageContext.request.contextPath}/NoticeFile/deleteUtil.do?id=${tmp.id }')"
											class="btn btn-xs btn-warning"><i
												class="icon-trash  bigger-120"></i> </a></c:if><c:if test="${user_type != 'admin'}"> <a title="�鿴" class="btn btn-xs btn-info"
											href="${pageContext.request.contextPath}/NoticeFile/selectUtil.do?id=${tmp.id }"><i

												class="icon-share bigger-120"></i> </a> </c:if>
<a title="����" class="btn btn-xs btn-info"
											href="${pageContext.request.contextPath}/admin/download.jsp?filename=${tmp.s_0}"><i
												class="icon-download bigger-120"></i> </a>
										</td>
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
				  {"orderable":false,"aTargets":[0,5]}// ָ���в���������
			] } );
	});
</script>
