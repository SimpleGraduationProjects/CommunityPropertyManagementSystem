<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/jsp/css/x-admin.css"
	media="all">
<script
	src="${pageContext.request.contextPath}/jsp/ueditor/ueditor.config.js"></script>
<script
	src="${pageContext.request.contextPath}/jsp/ueditor/ueditor.all.min.js"></script>
<script
	src="${pageContext.request.contextPath}/jsp/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>

	<div class="x-nav">
		<span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>公告管理</cite></a>
			<a><cite>基本设置</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

			<div class="layui-tab-content">
				<div class="layui-tab-item layui-show">
					<form class="layui-form layui-form-pane" action="">
						<input type="hidden" name="id" value="" />
						<div class="layui-form-item">
							<label class="layui-form-label"> <span class='x-red'>*</span>网站名称
							</label>
							<div class="layui-input-block">
								<select name="notice_category_id">
									<option value="">请选择广告位</option>
									<option value="">头部</option>


								</select>
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label"> <span class='x-red'>*</span>公告标题
							</label>
							<div class="layui-input-block">
								<input type="text" name="title" autocomplete="off"
									placeholder="5个左右,8汉字以内,用英文,隔开" class="layui-input"
									lay-verify="required" value="">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label"> <span class='x-red'>*</span>排序
							</label>
							<div class="layui-input-block">
								<input type="text" name="sort" autocomplete="off" placeholder=""
									class="layui-input" lay-verify="number" value="">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">状态</label>
							<div class="layui-input-block">
								<input type="radio" name="status" value="1" title="启用"
									checked="checked">
								<div class="layui-unselect layui-form-radio layui-form-radioed">
									<i class="layui-anim layui-icon layui-anim-scaleSpring"></i>
									<div>启用</div>
								</div>
								<input type="radio" name="status" value="0" title="禁用">
								<div class="layui-unselect layui-form-radio">
									<i class="layui-anim layui-icon"></i>
									<div>禁用</div>
								</div>
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label"> <span class='x-red'>*</span>公告内容
							</label>
							<div class="layui-input-block">
								<textarea id="content" placeholder="" name="content"></textarea>
							</div>
						</div>

						<div class="layui-form-item">
							<button class="layui-btn" lay-submit="" lay-filter="*">
								保存</button>
						</div>
					</form>
					<div style="height: 100px;"></div>
				</div>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/jsp/lib/layui/layui.js"
		charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/jsp/js/x-layui.js"
		charset="utf-8"></script>
	<script type="text/javascript">
		//实例化编辑器
		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
		UE.getEditor('content', {
			initialFrameWidth : 800,
			initialFrameHeight : 400,
		});
	</script>
	<script>
		layui.use([ 'element', 'layer', 'form' ], function() {
			$ = layui.jquery;//jquery
			lement = layui.element();//面包导航
			layer = layui.layer;//弹出层
			form = layui.form();

			//监听提交
			form.on('submit(*)', function(data) {
				var title = $("input[name='title']").val();
				var content = $("textarea[name='content']").val();
				if (title == '') {
					layer.msg("公告标题不能为空！", {
						icon : 5,
						time : 2000
					});
					return false;
				}
				if (content == '') {
					layer.msg("公告内容不能为空！", {
						icon : 5,
						time : 2000
					});
					return false;
				}
				var index=parent.layer.getFrameIndex(window.name); //获取当前窗口的name

				parent.layer.close(index);

				window.parent.location.reload();
				return true;
			});

		})
	</script>

</body>
</html>