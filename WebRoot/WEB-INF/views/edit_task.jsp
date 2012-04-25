<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
	<head>
		<title></title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</head>
<body>

	<%
  	request.setCharacterEncoding("UTF-8");
  	 %>
	<div class="navbar">
		<div class="navbar-inner">
		<div class="container">
			<ul class="nav">
				<li class="active">
				<a href="projectlis.jspx">项目管理</a>
				</li>
				
			</ul>
		</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<h4>任务编辑</h4>
				
			</div>
			<div class="span10">
			<c:if test="${requestScope.state eq '1'}">
							<div class="alert alert-success">
							 	<a class="close" data-dismiss="alert">×</a>
							 	<h2>修改成功！</h2>
							</div>
						</c:if>
				<c:if test="${requestScope.state eq '-1'}">
						<div class="alert alert-error">
							 <a class="close" data-dismiss="alert">×</a>
							<h2>服务器忙，请稍后......</h2>
						</div>
				</c:if>
				<form action="edittasks.jspx" class="well container" method="post">
					<h3>编辑任务</h3>
					
					任务名称：<input type="text" name="name" id="" required="required" value="${sessionScope.task.name }"/><br />
					任务描述：<textarea name="desc" id="" cols="30" rows="10">${sessionScope.task.desc}</textarea><br />
					
					任务进度：<input type="text" name="plane" id="" value="${sessionScope.task.plane }"/><br />
					<%-- 任务级别：<input type="text" name="level" id="" value="${sessionScope.task.level }"/><br />--%>
					
					<%-- 开始时间：<input type="text" name="begintime" id="" disabled="disabled" value="${sessionScope.task.begintime }"/><br />--%>
					结束时间：<input type="text" name="endtime" id="" required="required" value="${sessionScope.task.endtime }"/><br />
					<input type="submit" value="编辑目标" class="btn btn-primary"/>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
