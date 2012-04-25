<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>凯盛项目管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	</head>
<body class="body">
	
	<%@ include file="include/top.jsp" %>
	
	
	<div class="container">
	  <div class="row" style="margin-top:50px">
		<jsp:include page="include/side.jsp">
			<jsp:param value="new" name="tag"/>
		</jsp:include>
		<div class="span6">
		  
		  	<ul class="breadcrumb" style="margin-bottom:0px;margin-top:50px;border-radius: 3px 3px 0 0;">
				<li class="active">
					<i class="icon-th"></i>what do you want to share ?
				</li>
			</ul>
			<div class="wall">
				<form style="margin:0px">
					<textarea name="" id="" style="width:415px" rows="3"></textarea>
					<button class="btn btn-primary">发布</button>
				</form>
			</div>


			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:30px">
				<li class="active">
					<i class="icon-th"></i>信息流
				</li>
			</ul>
			<div class="wall">
				
			</div>



		</div>
		<div class="span3" style="margin-top:50px">
			<div class="box" >
				<div class="head" >我的任务</div>
				<ul>
					<li><a href=""></a>任务1</li>
					<li><a href=""></a>任务1</li>
					<li><a href=""></a>任务1</li>
				</ul>
			</div>
		</div>
	  </div>
	</div>
</body>
</html>