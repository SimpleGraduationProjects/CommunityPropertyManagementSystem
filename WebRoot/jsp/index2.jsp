<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<%@ include file="/jsp/css.jsp"%>
<%@ include file="/jsp/js.jsp"%>
<%@ include file="/admin/taglib.jsp"%>
<title><spring:message code="system_name" /></title>
<style>
.show_list {
	display: block;
}

.hide_lits {
	display: none;
}
</style>
</head>
<body>
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header header header-demo">
			<div class="layui-main">
				<div class="admin-logo-box">
					<a class="logo" href="" title="logo"><spring:message
							code="system_name" /></a>
				</div>
				<ul class="layui-nav" lay-filter="">
					<li class="layui-nav-item" id="time"
						style="margin-right: 50px; font-size: 20px; color: #2fb9d4; font-family: 'yjsz'"></li>
					<li class="layui-nav-item"><img
						src="${pageContext.request.contextPath}/jsp/images/logo.png"
						class="layui-circle" style="border: 2px solid #A9B7B7;"
						width="35px" alt=""></li>
					<li class="layui-nav-item"><a href="javascript:;">${name}&nbsp;</a>
						<dl class="layui-nav-child">
							<!-- 二级菜单 -->
							<dd>
								<a href="${pageContext.request.contextPath}">退出</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item x-index"><a href="#">前台首页</a></li>
					
				</ul>
			</div>
		</div>

		<!--左侧导航区域-->
		<%@ include file="/admin/menu.jsp"%>

		<div class="layui-tab layui-tab-card site-demo-title x-main"
			lay-filter="x-tab" lay-allowclose="true"
			style="left: 220px; border-left: solid 2px #2299ee;">
			<ul class="layui-tab-title">
				<li class="layui-this">我的桌面 <i
					class="layui-icon layui-unselect layui-tab-close">ဆ</i>
				</li>
			</ul>
			<div class="layui-tab-content site-demo site-demo-body">
				<div class="layui-tab-item layui-show">
					<iframe frameborder="0"
						src="${pageContext.request.contextPath}/jsp/welcome.html"
						class="x-iframe"></iframe>
				</div>
			</div>
		</div>
		<div class="site-mobile-shade"></div>

	</div>

	<script src="${pageContext.request.contextPath}/jsp/lib/layui/layui.js"
		charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/jsp/js/x-admin.js"></script>
	<script src="${pageContext.request.contextPath}/jsp/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/jsp/js/x-layui.js"
		charset="utf-8"></script>

	<script>
		$(".daohang").click(function() {
			var table = $(this).attr("ids");
			var ids = $(".show_list").attr("id");
			$("#" + ids + "").addClass("hide_lits");
			$("#" + ids + "").removeClass("show_list");
			$("" + table + "").removeClass("hide_lits");
			$("" + table + "").addClass("show_list");
		})
	</script>
	<script>
		layui.use([ 'laydate', 'element', 'laypage', 'layer' ], function() {
			$ = layui.jquery;//jquery
			laydate = layui.laydate;//日期插件
			lement = layui.element();//面包导航
			laypage = layui.laypage;//分页
			layer = layui.layer;//弹出层
			//以上模块根据需要引入

		});

		function logout() {

			$.ajax({
				type : "post",
				url : "",
				data : {
					e : 1
				},
				dataType : "json",
				success : function(data) {
					if (data.status == 1) {
						layer.msg(data.info, {
							icon : 1,
							time : 1000
						});
						setTimeout(
								"window.location.href='{:url('Login/login')}'",
								2000);
						return false;
						return false;
					} else {
						layer.msg(data.info, {
							icon : 5,
							time : 2000
						});
						return false;
					}
				}

			})
			return false;
		}

		function member_show(title, url, id, w, h) {
			x_admin_show(title, url, w, h);
		}
	</script>
	<script>
		//顶部时间
		function getTime() {
			var myDate = new Date();
			var myYear = myDate.getFullYear(); //获取完整的年份(4位,1970-????)
			var myMonth = myDate.getMonth() + 1; //获取当前月份(0-11,0代表1月)
			var myToday = myDate.getDate(); //获取当前日(1-31)
			var myDay = myDate.getDay(); //获取当前星期X(0-6,0代表星期天)
			var myHour = myDate.getHours(); //获取当前小时数(0-23)
			var myMinute = myDate.getMinutes(); //获取当前分钟数(0-59)
			var mySecond = myDate.getSeconds(); //获取当前秒数(0-59)
			var week = [ '星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六' ];
			var nowTime;

			nowTime = myYear + '-' + fillZero(myMonth) + '-'
					+ fillZero(myToday) + '&nbsp;&nbsp;' + fillZero(myHour)
					+ ':' + fillZero(myMinute) + ':' + fillZero(mySecond)
					+ '&nbsp;&nbsp;' + week[myDay] + '&nbsp;&nbsp;';
			//console.log(nowTime);
			$('#time').html(nowTime);
		};
		function fillZero(str) {
			var realNum;
			if (str < 10) {
				realNum = '0' + str;
			} else {
				realNum = str;
			}
			return realNum;
		}
		setInterval(getTime, 1000);
	</script>

</body>
</html>
