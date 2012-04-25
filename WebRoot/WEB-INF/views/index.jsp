<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>凯盛项目管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<style type="text/css">
			body{
				background-image:url(img/glyphicons-halflings-white.png);
			}
		</style>
	</head>
	<body>
	
	<div class="container" style="margin-top:100px">
		
		<form class="well" action="login.jspx" method="post" style="width:220px;margin:0px auto;">
		  <legend>Kaishengit-PMS</legend>
		  <label>账号</label>
		  <input type="text" class="span3" name="username">
		  <label>密码</label>
		  <input type="password" class="span3" name="password">
		  <br/>
		  <button type="submit" class="btn btn-primary">进入系统</button>
		</form>
		
	</div>
	
	
</body>
</html>