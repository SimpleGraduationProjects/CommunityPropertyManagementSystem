<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!--左侧导航区域-->
<div class="layui-side layui-bg-black x-side show_list"
	style="left: 0px;" id="table1">
	<div style="height: 130px; width: 220px;">
		<a class="img" title="我的头像"
			style="display: block; width: 80px; height: 80px; margin: 10px auto 10px;">
			<img src="${pageContext.request.contextPath}/jsp/images/logo.png"
			class="userAvatar"
			style="display: block; width: 100%; height: 100%; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; border: 4px solid #44576b; box-sizing: border-box;">
		</a>
		<p
			style="display: block; width: 100%; height: 25px; color: #ffffff; text-align: center; font-size: 12px; white-space: nowrap; line-height: 25px; overflow: hidden;">
			你好！<span class="userName">admin</span>, 欢迎回来
		</p>
	</div>
	<div class="layui-side-scroll">
		<ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">
			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>栏目管理111</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/admin/article/article-list.jsp">
							<cite>栏目列表111</cite>
						</a>
					</dd>
					</dd>
				</dl></li>

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>栏目管理222</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/admin/test/article-list.jsp">
							<cite>栏目列表2222</cite>
						</a>
					</dd>
					</dd>
				</dl></li>


			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>栏目管理333</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/admin/article/article-list.jsp">
							<cite>栏目列表333</cite>
						</a>
					</dd>
					</dd>
				</dl></li>

			<li class="layui-nav-item" style="height: 30px; text-align: center">
			</li>
		</ul>
	</div>
</div>

<div class="layui-side layui-bg-black x-side hide_lits "
	style="left: 0px;" id="table2">
	<div style="height: 130px; width: 220px;" class="head-img">
		<a class="img" title="我的头像"
			style="display: block; width: 80px; height: 80px; margin: 10px auto 10px;">
			<img src="${pageContext.request.contextPath}/jsp/images/logo.png"
			class="userAvatar"
			style="display: block; width: 100%; height: 100%; border-radius: 50%; -webkit-border-radius: 50%; -moz-border-radius: 50%; border: 4px solid #44576b; box-sizing: border-box;">
		</a>
		<p
			style="display: block; width: 100%; height: 25px; color: #ffffff; text-align: center; font-size: 12px; white-space: nowrap; line-height: 25px; overflow: hidden;">
			你好！<span class="userName">admin</span>, 欢迎回来
		</p>
	</div>
	<div class="layui-side-scroll">
		<ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">


			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe625;</i><cite>会员管理</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;" _href="member-list.html"> <cite>会员列表</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./member-del.html"> <cite>删除会员</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./member-level.html"> <cite>等级管理</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./member-kiss.html"> <cite>积分管理</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./member-view.html"> <cite>浏览记录</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./member-view.html"> <cite>分享记录</cite>
						</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe613;</i><cite>管理员管理</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;" _href="./admin-list.jsp"> <cite>管理员列表</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./admin-role.html"> <cite>角色管理</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./admin-cate.html"> <cite>权限分类</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./admin-rule.html"> <cite>权限管理</cite>
						</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe629;</i><cite>系统统计</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;" _href="./echart.html"> <cite>统计报表</cite>
						</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon" style="top: 3px;">&#xe614;</i><cite>系统设置</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;" _href="./sys-set.html"> <cite>系统设置</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./sys-data.html"> <cite>数字字典</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./sys-shield.html"> <cite>屏蔽词</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./sys-log.html"> <cite>系统日志</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./sys-link.html"> <cite>友情链接</cite>
						</a>
					</dd>
					<dd class="">
						<a href="javascript:;" _href="./sys-qq.html"> <cite>第三方登录</cite>
						</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item" style="height: 30px; text-align: center">
			</li>
		</ul>
	</div>
</div>

