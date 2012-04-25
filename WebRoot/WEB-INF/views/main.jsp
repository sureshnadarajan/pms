<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="include/base.jsp" %>

<!DOCTYPE HTML>
<html lang="zh-CN">
	<head>
		<title>凯盛项目管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		
	</head>
<body class="body">
	
	<%@ include file="include/top.jsp" %>
	
	<div class="container">
	  <div class="row">
		<div class="span9">
          
          	<div class="page-header" style="margin-top:50px">
          		<h2>项目列表</h2>
          	</div>
          	
          	<a href="new_project.jspx" class="btn btn-success"><i class="icon-plus icon-white"></i>开始一个新项目</a>

          	<c:if test="${fn:length(projectList) == 0 }">
				还没有任何项目！
			</c:if>
			
			<c:forEach items="${projectList }" var="project">
			    <ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
					<li class="active">
						<a href="project.jspx?id=${project.id }"><i class="icon-th"></i>${project.name }</a>
					</li>
				</ul>
				<div class="wall">
					<p>${project.desc }</p>
				</div>
			</c:forEach>
			
		</div>
		<div class="span3">
			
			
		</div>
	  </div>
	</div>
</body>
</html>