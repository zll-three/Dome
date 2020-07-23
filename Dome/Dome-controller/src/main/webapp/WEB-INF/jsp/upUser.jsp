<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

   
    <title>修改页面</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
  <style type="text/css">
   div{
     width: 500px;
     margin:0 auto
   }
   table{
    width: 500px;
   }
</style>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/upUser.js"></script>
   <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <script type="text/javascript">
    var contextPath = "${ctx}";
   </script>
    <div class="container">
       <c:forEach var="userList" items="${getUserList}"
							 varStatus="status">
     <h4>修改信息</h4>
     <table style="padding-bottom: 20px;">
            
				<tr>
					<td>姓名: </td>
					<td>
					 <input type="text" class="input-small" placeholder="员工名称" name="name" id="name" value="${userList.userName}">
					</td>
				</tr>
				<tr>
					<td>部门:</td>
					<td><select name="roleId" id="roleId">
					
					
					<c:if test="${getRoleList != null }">
					  
				
				    <c:forEach var="roleList" items="${userList.roleList}"
							 varStatus="status">
							 	   <option value="0">请选择</option>
				 <c:forEach var="getRoleList" items="${getRoleList}">				  
			
	     <option value="${getRoleList.roleId }" ${roleList.roleId==getRoleList.roleId ?'selected':''}>${roleId.roleName} </option> 
	     </c:forEach>
                 </c:forEach> 
				  </c:if>
	   			</select></td>
				</tr> 
				
				
			 
			</table>
           <input class="btn btn-primary" type="button" onclick="upUser(${userList.userId})" value="修改"/>
            <a href="${ctx}/index" class="btn btn-primary">返回</a>
			 </c:forEach>
  </div>
  
  

