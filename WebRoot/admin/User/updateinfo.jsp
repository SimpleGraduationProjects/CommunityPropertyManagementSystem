<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<%@ include file="../taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息管理</title>
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
<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/common/assets/css/ace-ie.min.css" />
		<![endif]-->
<script
	src="${pageContext.request.contextPath}/common/js/jquery-1.9.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/common/assets/layer/layer.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/common/assets/laydate/laydate.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/common/assets/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/common/assets/js/typeahead-bs2.min.js"></script>
<script
	src="${pageContext.request.contextPath}/common/assets/js/jquery.dataTables.min.js"></script>
<script
	src="${pageContext.request.contextPath}/common/assets/js/jquery.dataTables.bootstrap.js"></script>

</head>
<body>
	<div class="clearfix">
		<div class="admin_info_style">
			<div class="admin_modify_style" id="Personal">
				<div class="type_title">个人信息</div>

				<form id="myform"
					action="${pageContext.request.contextPath}/User/updateinfo.do"
					method="post">
					<input name="id" value="${util.id }" type="hidden" /> <input
						name="s_0" value="${util.s_0 }" type="hidden" /> <input
						name="s_1" value="${util.s_1 }" type="hidden" id="s_1" /><input
						name="s_10" value="${util.s_10 }" type="hidden" /> <input
						name="s_11" value="${util.s_11 }" type="hidden" /> <input
						name="s_12" value="${util.s_12 }" type="hidden" />

					<div class="xinxi">
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">姓名： </label>
							<div class="col-sm-9">
								<input type="text" name="s_2" id="website-title"
									value="${util.s_2 }" class="col-xs-7 text_info"
									disabled="disabled"> &nbsp;&nbsp;&nbsp;<a
									href="javascript:ovid()" onclick="change_Password()"
									class="btn btn-warning btn-xs">修改密码</a>
							</div>

						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">性别： </label>
							<div class="col-sm-9">
								<span class="sex">${util.s_4 }</span>
								<div class="add_sex">
									<label> </label>&nbsp;&nbsp; <label><input name="s_4"
										<c:if test="${util.s_4 != '女' }">checked</c:if> type="radio"
										value="男" class="ace"><span class="lbl">男</span> </label>&nbsp;&nbsp;
									<label><input name="s_4"
										<c:if test="${util.s_4 == '女' }">checked</c:if> type="radio"
										value="女" class="ace"><span class="lbl">女</span> </label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">出生日期： </label>
							<div class="col-sm-9">
								<input type="text" name="s_3" value="${util.s_3 }"
									onClick="WdatePicker();" id="datemin"
									class="col-xs-7 text_info" disabled="disabled">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">联系方式： </label>
							<div class="col-sm-9">
								<input type="text" id="website-title" name="s_5"
									value="${util.s_5 }" class="col-xs-7 text_info"
									disabled="disabled">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">QQ： </label>
							<div class="col-sm-9"><input type="text" id="website-title" name="s_6"
									value="${util.s_6 }" class="col-xs-7 text_info"
									disabled="disabled"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">微信： </label>
							<div class="col-sm-9"><input type="text" id="website-title" name="s_7"
									value="${util.s_7 }" class="col-xs-7 text_info"
									disabled="disabled"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">籍贯： </label>
							<div class="col-sm-9">
								<input type="text" id="website-title" name="s_8"
									value="${util.s_8 }" class="col-xs-7 text_info"
									disabled="disabled">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">家庭住址： </label>
							<div class="col-sm-9">
								<input type="text" id="website-title" name="s_9"
									value="${util.s_9 }" class="col-xs-7 text_info"
									disabled="disabled">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">身份类型： </label>
							<div class="col-sm-9">
								<span><c:if test="${util.s_11 == 'user'}">
										<spring:message code="sys_user" />
									</c:if> <c:if test="${util.s_11 == 'admin'}">
										<spring:message code="sys_admin" />
									</c:if> <c:if test="${util.s_11 == 'root'}">
										<spring:message code="sys_root" />
									</c:if> </span>
							</div>
						</div>

						<div class="Button_operation clearfix">
							<button onclick="modify();" class="btn btn-danger radius"
								type="button">修改信息</button>
							<button onclick="save_info();" class="btn btn-success radius"
								type="button">保存修改</button>
						</div>
					</div>

				</form>



			</div>
			<div class="recording_style">
				<div class="type_title">用户操作记录</div>
				<div class="recording_list">
					<table
						class="table table-border table-bordered table-bg table-hover table-sort"
						id="sample-table">
						<thead>
							<tr class="text-c">
								<th width="25"><label><input type="checkbox"
										class="ace"><span class="lbl"></span> </label>
								</th>
								<th width="10%">ID</th>
								<th>类型</th>
								<th width="17%">操作时间</th>
								<th width="17%">操作地点</th>
								<th width="17%">操作人</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${fn:length(listUserLog) < 1}">
								<tr class="text-c va-m">
									<td colspan=52>无记录</td>
								</tr>
							</c:if>
							<c:forEach var="tmp" items="${listUserLog}">
								<tr>
									<td><label><input type="checkbox" name="id"
											value="${tmp.id }" class="ace"><span class="lbl"></span>
									</label></td>
									<td>${tmp.id }</td>
									<td>${tmp.s_0 }</td>
									<td>${tmp.s_1 }</td>
									<td>127.0.0.1</td>
									<td>${tmp.s_2 }</td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!--修改密码样式-->
	<form id="form_pwd"
		action="${pageContext.request.contextPath}/User/updatepwd.do"
		method="post">
		<input name="id" value="${util.id }" type="hidden" />
		<div class="change_Pass_style" id="change_Pass">
			<ul class="xg_style">
				<li><label class="label_name">原&nbsp;&nbsp;密&nbsp;码</label><input
					name="s_3" id="s_3" type="password" class="" id="password">
				</li>
				<li><label class="label_name">新&nbsp;&nbsp;密&nbsp;码</label><input
					name="s_4" id="s_4" type="password" class="" id="Nes_pas">
				</li>
				<li><label class="label_name">确认密码</label><input name="s_5"
					id="repwd" type="password" class="" id="c_mew_pas">
				</li>

			</ul>
		</div>
	</form>
</body>
</html>
<script>
	//按钮点击事件
	function modify() {
		$('.text_info').attr("disabled", false);
		$('.text_info').addClass("add");
		$('#Personal').find('.xinxi').addClass("hover");
		$('#Personal').find('.btn-success').css({
			'display' : 'block'
		});
	};
	function save_info() {
		layer.confirm('确认提交修改吗？', function(index) {
			layer.msg('修改成功!', {
				icon : 6,
				time : 1000
			});
			setTimeout(function() {
				document.getElementById('myform').submit();
			}, 10);
		});
	};
	//初始化宽度、高度    
	$(".admin_modify_style").height($(window).height());
	$(".recording_style").width($(window).width() - 400);
	//当文档窗口发生改变时 触发  
	$(window).resize(function() {
		$(".admin_modify_style").height($(window).height());
		$(".recording_style").width($(window).width() - 400);
	});
	//修改密码
	function change_Password() {
		layer.open({
			type : 1,
			title : '修改密码',
			area : [ '300px', '300px' ],
			shadeClose : true,
			content : $('#change_Pass'),
			btn : [ '确认修改' ],
			yes : function(index, layero) {
				var s_1 = $("#s_1").val();
				var s_3 = $("#s_3").val();
				var s_4 = $("#s_4").val();
				var repwd = $("#repwd").val();
				if (s_3 == "") {
					layer.alert('原密码不能为空!', {
						title : '提示框',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				}
				if (s_4 == "") {
					layer.alert('新密码不能为空!', {
						title : '提示框',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				}

				if (repwd == "") {
					layer.alert('确认新密码不能为空!', {
						title : '提示框',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				}
				if (s_4 != repwd) {
					layer.alert('两次密码不一致!', {
						title : '提示框',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				}
				if (s_4 == s_3) {
					layer.alert('新旧密码不能一致!', {
						title : '提示框',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				}
				if (s_3 != s_1) {
					layer.alert('旧密码错误!', {
						title : '提示框',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				} else {
					layer.alert('修改成功！', {
						title : '提示框',
						icon : 1,
					});
					layer.close(index);
					setTimeout(function() {
						document.getElementById('form_pwd').submit();
					}, 10);
				}
			}
		});
	}
</script>
<script>
	jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{
				"orderable" : false,
				"aTargets" : [ 0 ]
			} // 制定列不参与排序
			]
		});

		$('table th input:checkbox').on(
				'click',
				function() {
					var that = this;
					$(this).closest('table').find(
							'tr > td:first-child input:checkbox').each(
							function() {
								this.checked = that.checked;
								$(this).closest('tr').toggleClass('selected');
							});

				});
	});
</script>