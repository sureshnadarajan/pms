<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</head>
<body>
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
			<div class="span10">
			<c:if test="${requestScope.state eq '1'}">
				<div class="alert alert-success">
					 <a class="close" data-dismiss="alert">×</a>
					 <h2>添加成功！</h2>
				</div>
			</c:if>
			<c:if test="${requestScope.state eq '-1'}">
				<div class="alert alert-error">
					 <a class="close" data-dismiss="alert">×</a>
					<h2>服务器忙，请稍后......</h2>
				</div>
			</c:if>
			<c:if test="${requestScope.msg eq '-1'}">
				<div class="alert alert-error">
					 <a class="close" data-dismiss="alert">×</a>
					<h2>用户名已存在，请另起用户名！</h2>
				</div>
			</c:if>
				<form action="addemployes.jspx" class="well" method="post" style="width:300px;text-align:center;margin-left:auto;margin-right:auto;">
					<h3>添加成员</h3>
					用户名：<input type="text" name="username" required="required"/><br />
					密　码：<input type="password" name="password" required="required"/><br />
					身　份：<input type="text" name="role" required="required"/><br />
					<input type="submit" value="注册" class="btn btn-primary"/>&nbsp;&nbsp;<input type="reset" value="重置" class="btn btn-primary"/>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
