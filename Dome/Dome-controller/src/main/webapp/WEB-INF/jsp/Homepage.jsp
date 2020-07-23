<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>练习</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/layui/css/layui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/font.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/xadmin.css">
<!-- <link rel="stylesheet" href="./css/theme5.css"> -->
<script src="${pageContext.request.contextPath}/statics/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/xadmin.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/Homepage.js"></script>
<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
<!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
tr {
	height: 50px;
	align: center;
}

td {
	width: 100px;
	text-align: center;
}
</style>
</head>
</head>
<body>
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
		 <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/Homepage.js"></script>
		 	 <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/delUser.js"></script>
	<c:set var="ctx" value="${pageContext.request.contextPath}" />
	<script type="text/javascript">
		var contextPath = "${ctx}";
		var userId = "${user.userId}";
	</script>
<body class="index">
	<div class="container">
		<div class="logo">
			<a href="${ctx}/index">Dome</a>
		</div>
		<div class="left_open">
			<a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
		</div>
		<ul class="layui-nav right" lay-filter="">
			<li class="layui-nav-item" style="margin-right: 30px;"><span></span>
			</li>
		</ul>
	</div>
	<!-- 顶部结束 -->
	<!-- 中部开始 -->
	<!-- 左侧菜单开始 -->
	<div class="left-nav">
		<div id="side-nav">



			<ul id="nav">

				<li><a href="${ctx}/index"> <i class="iconfont left-nav-li"
						lay-tips="主页">&#xe6b8;</i> <cite>用户主页</cite>
				</a></li>
			</ul>
		</div>
	</div>

	<div class="page-content">

		<div class="page-content1" id="viewstudent">
			<div id="aa">
				<br> <br>
				<table class="layui-table">
					<thead>
						<tr>
							<th>用户名称</th>
							<th>用户角色</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="getUserList" items="${getUserList}"
							varStatus="status">
							<tr>

								<td>${getUserList.userName }</td>
								<td><c:forEach var="roleList" items="${getUserList.roleList}"
							varStatus="status">
							${roleList.roleName }
							</c:forEach>
							</td>
							<td><a href="javascript:;" onclick="add()">增加用户</a>&nbsp;&nbsp;&nbsp;&nbsp;
							    <a href="javascript:;" onclick="delUser(${getUserList.userId})">删除关联</a>&nbsp;&nbsp;&nbsp;&nbsp;
							     <a href="javascript:;" onclick="up(${getUserList.userId})">修改用户</a>
							</td>
							</tr>

						</c:forEach>
					</tbody>
				</table>

			</div>

		</div>







	</div>
</body>
</html>