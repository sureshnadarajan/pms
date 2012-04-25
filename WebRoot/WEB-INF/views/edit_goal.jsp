<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
	<head>
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
			<div class="span2">
				<h4>目标编辑</h4>
				
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
				<form action="edit_goal.jspx" class="well container" method="post">
					<h3>编辑目标</h3>
					
					目标名称：<input type="text" name="name" id="" required="required" value="${sessionScope.goal.name }"/><br />
					目标描述：<textarea name="desc" id="" cols="30" rows="10">${sessionScope.goal.desc}</textarea><br />
					
					目标进度：<input type="text" name="plane" id="" value="${sessionScope.goal.plane }"/><br />
					<%-- 开始时间：<input type="text" name="begintime" id="" disabled="disabled" value="${sessionScope.goal.begintime }"/><br />--%>
					结束时间：<input type="text" name="endtime" id="" required="required" value="${sessionScope.goal.endtime }"/><br />
					<input type="submit" value="保存" class="btn btn-primary"/>
				</form>
			</div>
		</div>
	</div>
  </body>
</html>
