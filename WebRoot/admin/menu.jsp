<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!--左侧导航区域-->
<div class="layui-side layui-bg-black x-side show_list"
	style="left: 0px;" id="table1">
	<div style="height: 40px; width: 220px;">
		<a class="img" title="我的头像"
			style="display: block; width: 80px; height: 2px; margin: 10px auto 10px;">
		</a>
		<p
			style="display: block; width: 100%; height: 25px; color: #ffffff; text-align: center; font-size: 12px; white-space: nowrap; line-height: 25px; overflow: hidden;">
			你好！<span class="userName"> ${name} </span>, 欢迎回来
		</p>
	</div>
	<div class="layui-side-scroll">
		<ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">
			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>个人资料编辑</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/User/beforeinfo.do"
							title="个人信息"><cite>个人信息</cite></a>
					</dd>
				</dl></li>

			<c:if test="${user_type == 'root' || user_type == 'admin'}">
				<li class="layui-nav-item"><a class="javascript:;"
					href="javascript:;"> <i class="layui-icon iconfont"
						style="top: 3px;">&#xe661;</i><cite>用户管理</cite>
				</a>
					<dl class="layui-nav-child">

						<dd class="">
							<a href="javascript:;" title="用户列表"
								_href="${pageContext.request.contextPath}/User/getAllUtil.do">
								<cite>用户列表</cite>
							</a>
						</dd>

						<dd class="">
							<a href="javascript:;" title="日志列表"
								_href="${pageContext.request.contextPath}/UserLog/getAllUtil.do">
								<cite>日志列表</cite>
							</a>
						</dd>
					</dl></li>

			</c:if>
			
			<c:if test="${user_type == 'admin' || user_type == 'user'}">
			
			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>公告管理</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/NoticeFile/getAllUtil.do">
							<cite>公告管理</cite>
						</a>
					</dd>
				</dl></li>


			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>住房管理</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/ZhuFang/getAllUtil.do">
							<cite>住房管理</cite>
						</a>
					</dd>
				</dl></li>

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>缴费信息</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/JiaoFei/getAllUtil.do">
							<cite>缴费信息</cite>
						</a>
					</dd>
				</dl></li>

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>投诉管理</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/TouSu/getAllUtil.do">
							<cite>投诉管理</cite>
						</a>
					</dd>
				</dl></li>

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>报修管理</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/BaoXiu/getAllUtil.do">
							<cite>报修管理</cite>
						</a>
					</dd>
				</dl></li>

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>车位管理</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/CheWei/getAllUtil.do">
							<cite>车位管理</cite>
						</a>
					</dd>
				</dl></li>

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>快递查询</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/Kuaidi/getAllUtil.do">
							<cite>快递查询</cite>
						</a>
					</dd>
				</dl></li>
				

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>留言建议</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/PingJia/getAllUtil.do">
							<cite>留言建议</cite>
						</a>
					</dd>
				</dl></li>

</c:if>
			
		</ul>
	</div>
</div>