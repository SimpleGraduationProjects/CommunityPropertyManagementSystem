<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!--��ർ������-->
<div class="layui-side layui-bg-black x-side show_list"
	style="left: 0px;" id="table1">
	<div style="height: 40px; width: 220px;">
		<a class="img" title="�ҵ�ͷ��"
			style="display: block; width: 80px; height: 2px; margin: 10px auto 10px;">
		</a>
		<p
			style="display: block; width: 100%; height: 25px; color: #ffffff; text-align: center; font-size: 12px; white-space: nowrap; line-height: 25px; overflow: hidden;">
			��ã�<span class="userName"> ${name} </span>, ��ӭ����
		</p>
	</div>
	<div class="layui-side-scroll">
		<ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">
			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>�������ϱ༭</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/User/beforeinfo.do"
							title="������Ϣ"><cite>������Ϣ</cite></a>
					</dd>
				</dl></li>

			<c:if test="${user_type == 'root' || user_type == 'admin'}">
				<li class="layui-nav-item"><a class="javascript:;"
					href="javascript:;"> <i class="layui-icon iconfont"
						style="top: 3px;">&#xe661;</i><cite>�û�����</cite>
				</a>
					<dl class="layui-nav-child">

						<dd class="">
							<a href="javascript:;" title="�û��б�"
								_href="${pageContext.request.contextPath}/User/getAllUtil.do">
								<cite>�û��б�</cite>
							</a>
						</dd>

						<dd class="">
							<a href="javascript:;" title="��־�б�"
								_href="${pageContext.request.contextPath}/UserLog/getAllUtil.do">
								<cite>��־�б�</cite>
							</a>
						</dd>
					</dl></li>

			</c:if>
			
			<c:if test="${user_type == 'admin' || user_type == 'user'}">
			
			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>�������</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/NoticeFile/getAllUtil.do">
							<cite>�������</cite>
						</a>
					</dd>
				</dl></li>


			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>ס������</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/ZhuFang/getAllUtil.do">
							<cite>ס������</cite>
						</a>
					</dd>
				</dl></li>

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>�ɷ���Ϣ</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/JiaoFei/getAllUtil.do">
							<cite>�ɷ���Ϣ</cite>
						</a>
					</dd>
				</dl></li>

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>Ͷ�߹���</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/TouSu/getAllUtil.do">
							<cite>Ͷ�߹���</cite>
						</a>
					</dd>
				</dl></li>

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>���޹���</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/BaoXiu/getAllUtil.do">
							<cite>���޹���</cite>
						</a>
					</dd>
				</dl></li>

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>��λ����</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/CheWei/getAllUtil.do">
							<cite>��λ����</cite>
						</a>
					</dd>
				</dl></li>

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>��ݲ�ѯ</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/Kuaidi/getAllUtil.do">
							<cite>��ݲ�ѯ</cite>
						</a>
					</dd>
				</dl></li>
				

			<li class="layui-nav-item"><a class="javascript:;"
				href="javascript:;"> <i class="layui-icon iconfont"
					style="top: 3px;">&#xe661;</i><cite>���Խ���</cite>
			</a>
				<dl class="layui-nav-child">
					<dd class="">
						<a href="javascript:;"
							_href="${pageContext.request.contextPath}/PingJia/getAllUtil.do">
							<cite>���Խ���</cite>
						</a>
					</dd>
				</dl></li>

</c:if>
			
		</ul>
	</div>
</div>