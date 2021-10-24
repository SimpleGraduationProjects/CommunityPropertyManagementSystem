<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../list_common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公告列表</title>
</head>
<body>
	<div class="page-content clearfix">
		<div id="Member_Ratings">
			<div class="d_Confirm_Order_style">
				
				<c:if test="${user_type == 'admin'}"><div class="border clearfix">
					<span class="l_f"> <a
						href="${pageContext.request.contextPath}/NoticeFile/initUtil.do"
						class="btn btn-warning"><i class="icon-plus"></i>添加公告</a> <a
						onClick="member_delMany();" class="btn btn-danger"><i
							class="icon-trash"></i>批量删除</a> </span>
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
											class="ace"><span class="lbl"></span> 全选</label></th>
								<th width="160">图片</th>
									<th width="100">文件名</th>
									<th width="100">上传时间</th>
									<th width="100">公告名称</th>
									<th width="100">公告类型</th>
									<th width="100">公告内容</th>
									<th width="100">操作</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${fn:length(pageModel.list) < 1}">
									<tr class="text-c va-m">
										<td colspan=52>无记录</td>
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
										<td class="td-manage"><c:if test="${user_type == 'admin'}"><a title="编辑" class="btn btn-xs btn-info"
											href="${pageContext.request.contextPath}/NoticeFile/selectUtil.do?id=${tmp.id }"><i
												class="icon-edit bigger-120"></i> </a> <a title="删除"
											href="javascript:;"
											onclick="member_del('${pageContext.request.contextPath}/NoticeFile/deleteUtil.do?id=${tmp.id }')"
											class="btn btn-xs btn-warning"><i
												class="icon-trash  bigger-120"></i> </a></c:if><c:if test="${user_type != 'admin'}"> <a title="查看" class="btn btn-xs btn-info"
											href="${pageContext.request.contextPath}/NoticeFile/selectUtil.do?id=${tmp.id }"><i

												class="icon-share bigger-120"></i> </a> </c:if>
<a title="下载" class="btn btn-xs btn-info"
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
			"aaSorting": [[ 1, "desc" ]],//默认第几个排序
			"bStateSave": true,//状态保存
			"aoColumnDefs": [
				  {"orderable":false,"aTargets":[0,5]}// 指定列不参与排序
			] } );
	});
</script>
