<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>
<link href="${pageContext.request.contextPath}/common/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/css/style.css" />
<link href="${pageContext.request.contextPath}/common/assets/css/codemirror.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/assets/css/ace.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/assets/css/font-awesome.min.css" />
<script src="${pageContext.request.contextPath}/common/assets/js/jquery.min.js"></script>


<script type="text/javascript">
	window.jQuery
			|| document.write("<script src='${pageContext.request.contextPath}/common/assets/js/jquery-2.0.3.min.js'>"
					+ "<"+"/script>");
</script>


<script type="text/javascript">
	if ("ontouchend" in document)
		document.write("<script src='${pageContext.request.contextPath}/common/assets/js/jquery.mobile.custom.min.js'>"
				+ "<"+"/script>");
</script>
<script src="${pageContext.request.contextPath}/common/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/common/assets/js/typeahead-bs2.min.js"></script>
<script src="${pageContext.request.contextPath}/common/assets/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/common/assets/js/jquery.dataTables.bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/common/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/common/js/H-ui.admin.js"></script>
<script src="${pageContext.request.contextPath}/common/assets/layer/layer.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/common/assets/laydate/laydate.js" type="text/javascript"></script>
<script type="text/javascript">
	
	/*用户-停用*/
	function member_stop(url){
		alert(url);
		layer.confirm('确认要停用吗？',function(index){
			layer.msg('已停用!',{icon: 5,time:1000});
			setTimeout(function(){ 
				location.href=url;
			},300);
		});
	}

	/*用户-启用*/
	function member_start(url){
		layer.confirm('确认要启用吗？',function(index){
			layer.msg('已启用!',{icon: 6,time:1000});
			setTimeout(function(){ 
				location.href=url;
			},300);
		});
	}
	
	/*用户-删除*/
	function member_del(url) {
		layer.confirm('确认要删除吗？', function(index) {
			layer.msg('删除成功!', { icon : 6, time : 1000 });
			setTimeout(function(){ 
				location.href=url;
			},400);
		});
	} 
	
	/*用户-批量删除*/
	function member_delMany() {
		var ids = document.getElementsByName("id");
		var flag = 0;
		for(var i = 0; i < ids.length; i++){
			if(ids[i].checked){
				flag = 1;
				break;
			}
		}
		if(flag == 0){
			layer.msg('请至少选中一条记录!', { icon : 5, time : 2000 });
			return;
		}
				
		layer.confirm('确认要删除选中记录吗？', function(index) {
			layer.msg('删除成功!', { icon : 6, time : 1000 });
			setTimeout(function(){ 
				document.getElementById('myform').submit();
			},400);
		});
	} 
</script>