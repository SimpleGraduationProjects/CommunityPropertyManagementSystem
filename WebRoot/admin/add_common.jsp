<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/common/Widget/My97DatePicker/WdatePicker.js"></script>	
<link
	href="${pageContext.request.contextPath}/common/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/common/css/style.css" />
<link
	href="${pageContext.request.contextPath}/common/assets/css/codemirror.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/common/assets/css/ace.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/common/font/css/font-awesome.min.css" />

<script
	src="${pageContext.request.contextPath}/common/assets/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/common/assets/js/typeahead-bs2.min.js"></script>
<script
	src="${pageContext.request.contextPath}/common/assets/layer/layer.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/common/assets/laydate/laydate.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/common/js/H-ui.js"
	type="text/javascript"></script>
	
	
<script type="text/javascript"
	src="${pageContext.request.contextPath}/common/Widget/ueditor/1.4.3/ueditor.config.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/common/Widget/ueditor/1.4.3/ueditor.all.min.js">
	
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/common/Widget/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
	/**提交操作**/
	function article_save_submit() {
		var num = 0;
		var str = "";
		$(".Mandatory input[type$='text']").each(function(n) {
			if ($(this).val() == "") {

				layer.alert(str += "" + $(this).attr("placeholder") + "不能为空！\r\n", {
					title : '提示框',
					icon : 0,
				});
				num++;
				return false;
			}
		});
		if (num > 0) {
			return false;
		} else {
			layer.alert('添加成功！', {
				title : '提示框',
				icon : 1,
			});
			layer.close(index);
		}
	}
	
	
</script>


 