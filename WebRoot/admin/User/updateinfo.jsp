<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<%@ include file="../taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>������Ϣ����</title>
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
				<div class="type_title">������Ϣ</div>

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
								for="form-field-1">������ </label>
							<div class="col-sm-9">
								<input type="text" name="s_2" id="website-title"
									value="${util.s_2 }" class="col-xs-7 text_info"
									disabled="disabled"> &nbsp;&nbsp;&nbsp;<a
									href="javascript:ovid()" onclick="change_Password()"
									class="btn btn-warning btn-xs">�޸�����</a>
							</div>

						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">�Ա� </label>
							<div class="col-sm-9">
								<span class="sex">${util.s_4 }</span>
								<div class="add_sex">
									<label> </label>&nbsp;&nbsp; <label><input name="s_4"
										<c:if test="${util.s_4 != 'Ů' }">checked</c:if> type="radio"
										value="��" class="ace"><span class="lbl">��</span> </label>&nbsp;&nbsp;
									<label><input name="s_4"
										<c:if test="${util.s_4 == 'Ů' }">checked</c:if> type="radio"
										value="Ů" class="ace"><span class="lbl">Ů</span> </label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">�������ڣ� </label>
							<div class="col-sm-9">
								<input type="text" name="s_3" value="${util.s_3 }"
									onClick="WdatePicker();" id="datemin"
									class="col-xs-7 text_info" disabled="disabled">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">��ϵ��ʽ�� </label>
							<div class="col-sm-9">
								<input type="text" id="website-title" name="s_5"
									value="${util.s_5 }" class="col-xs-7 text_info"
									disabled="disabled">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">QQ�� </label>
							<div class="col-sm-9"><input type="text" id="website-title" name="s_6"
									value="${util.s_6 }" class="col-xs-7 text_info"
									disabled="disabled"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">΢�ţ� </label>
							<div class="col-sm-9"><input type="text" id="website-title" name="s_7"
									value="${util.s_7 }" class="col-xs-7 text_info"
									disabled="disabled"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">���᣺ </label>
							<div class="col-sm-9">
								<input type="text" id="website-title" name="s_8"
									value="${util.s_8 }" class="col-xs-7 text_info"
									disabled="disabled">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">��ͥסַ�� </label>
							<div class="col-sm-9">
								<input type="text" id="website-title" name="s_9"
									value="${util.s_9 }" class="col-xs-7 text_info"
									disabled="disabled">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="form-field-1">������ͣ� </label>
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
								type="button">�޸���Ϣ</button>
							<button onclick="save_info();" class="btn btn-success radius"
								type="button">�����޸�</button>
						</div>
					</div>

				</form>



			</div>
			<div class="recording_style">
				<div class="type_title">�û�������¼</div>
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
								<th>����</th>
								<th width="17%">����ʱ��</th>
								<th width="17%">�����ص�</th>
								<th width="17%">������</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${fn:length(listUserLog) < 1}">
								<tr class="text-c va-m">
									<td colspan=52>�޼�¼</td>
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
	<!--�޸�������ʽ-->
	<form id="form_pwd"
		action="${pageContext.request.contextPath}/User/updatepwd.do"
		method="post">
		<input name="id" value="${util.id }" type="hidden" />
		<div class="change_Pass_style" id="change_Pass">
			<ul class="xg_style">
				<li><label class="label_name">ԭ&nbsp;&nbsp;��&nbsp;��</label><input
					name="s_3" id="s_3" type="password" class="" id="password">
				</li>
				<li><label class="label_name">��&nbsp;&nbsp;��&nbsp;��</label><input
					name="s_4" id="s_4" type="password" class="" id="Nes_pas">
				</li>
				<li><label class="label_name">ȷ������</label><input name="s_5"
					id="repwd" type="password" class="" id="c_mew_pas">
				</li>

			</ul>
		</div>
	</form>
</body>
</html>
<script>
	//��ť����¼�
	function modify() {
		$('.text_info').attr("disabled", false);
		$('.text_info').addClass("add");
		$('#Personal').find('.xinxi').addClass("hover");
		$('#Personal').find('.btn-success').css({
			'display' : 'block'
		});
	};
	function save_info() {
		layer.confirm('ȷ���ύ�޸���', function(index) {
			layer.msg('�޸ĳɹ�!', {
				icon : 6,
				time : 1000
			});
			setTimeout(function() {
				document.getElementById('myform').submit();
			}, 10);
		});
	};
	//��ʼ����ȡ��߶�    
	$(".admin_modify_style").height($(window).height());
	$(".recording_style").width($(window).width() - 400);
	//���ĵ����ڷ����ı�ʱ ����  
	$(window).resize(function() {
		$(".admin_modify_style").height($(window).height());
		$(".recording_style").width($(window).width() - 400);
	});
	//�޸�����
	function change_Password() {
		layer.open({
			type : 1,
			title : '�޸�����',
			area : [ '300px', '300px' ],
			shadeClose : true,
			content : $('#change_Pass'),
			btn : [ 'ȷ���޸�' ],
			yes : function(index, layero) {
				var s_1 = $("#s_1").val();
				var s_3 = $("#s_3").val();
				var s_4 = $("#s_4").val();
				var repwd = $("#repwd").val();
				if (s_3 == "") {
					layer.alert('ԭ���벻��Ϊ��!', {
						title : '��ʾ��',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				}
				if (s_4 == "") {
					layer.alert('�����벻��Ϊ��!', {
						title : '��ʾ��',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				}

				if (repwd == "") {
					layer.alert('ȷ�������벻��Ϊ��!', {
						title : '��ʾ��',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				}
				if (s_4 != repwd) {
					layer.alert('�������벻һ��!', {
						title : '��ʾ��',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				}
				if (s_4 == s_3) {
					layer.alert('�¾����벻��һ��!', {
						title : '��ʾ��',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				}
				if (s_3 != s_1) {
					layer.alert('���������!', {
						title : '��ʾ��',
						icon : 0,
					});
					$("#s_3").val("");
					$("#s_4").val("");
					$("#repwd").val("");
					return false;
				} else {
					layer.alert('�޸ĳɹ���', {
						title : '��ʾ��',
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
			"aaSorting" : [ [ 1, "desc" ] ],//Ĭ�ϵڼ�������
			"bStateSave" : true,//״̬����
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //�����е�������ʾ
			{
				"orderable" : false,
				"aTargets" : [ 0 ]
			} // �ƶ��в���������
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