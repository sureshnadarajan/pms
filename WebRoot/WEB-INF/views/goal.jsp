<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="include/base.jsp" %>
<!DOCTYPE HTML>
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<title>凯盛项目管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="http://lib.sinaapp.com/js/jquery/1.7.2/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</head>
<body class="body">
	
	<%@ include file="include/top.jsp" %>
	
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="#">Kaishengit PMS</a>
			</div>
		</div>
	</div>
	
	
	<div class="container">
	  <div class="row" style="margin-top:50px">
		<div class="span3">
			<div style="padding: 8px 0;" class="well">
				<ul class="nav nav-list">
				  <li class="nav-header">Googel Party</li>
				  <li class="divider"></li>
				  <li><a href="#"><i class="icon-home"></i>最新动态</a></li>
				  <li class="active">
					<a href="#"><i class="icon-white icon-flag"></i>目标</a>
				  </li>
				  <li><a href="#"><i class="icon-folder-open"></i>资料库</a></li>
				  <li><a href="#"><i class="icon-file"></i>文件共享</a></li>
				  <li><a href="#"><i class="icon-user"></i>联系人</a></li>
				  <li><a href="#"><i class="icon-fire"></i>想法</a></li>
				  <li><a href="#"><i class="icon-warning-sign"></i>Bug</a></li>
				  <li><a href="#"><i class="icon-cog"></i>项目设置</a></li>
				</ul>
			</div>
		</div>
		<div class="span9">
			
			<div class="btn-group" style="float:right;margin-top:3px">
          		<a class="btn" href="#"><i class="icon-cog"></i>操作</a>
          		<a class="btn dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
          		<ul class="dropdown-menu">
            		<li><a href="new_goal.jsp"><i class="icon-plus"></i>添加新目标</a></li>
            		<li><a href="#"><i class="icon-zoom-in"></i>浏览所有任务</a></li>
          		</ul>
        	</div>

			<div class="clear"></div>

			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:30px">
				<li class="active">
					<a href="task.jspx"><i class="icon-th"></i>目标1</a>
				</li>
				<li style="float:right"><i class="icon-edit"></i><a href="edit_goal.jspx" class="link-black">编辑</a></li>
			</ul>
			<div class="wall">
				<p>由Google公关部，宣传部进行年会宣传。</p>
				<div class="progress progress-danger">
					<div class="bar" style="width: 60%;">已完成70%</div>
				</div>
			</div>
			
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
				<li class="active">
					<a href="javascript:;"><i class="icon-th"></i>目标2</a>
				</li>
				<li style="float:right"><i class="icon-edit"></i><a href="#" class="link-black">编辑</a></li>
			</ul>
			<div class="wall">
				<p>后勤部负责选取合适会场，并进行会场布置。</p>
				<div class="progress progress-danger">
					<div class="bar" style="width: 90%;">已完成90%</div>
				</div>
			</div>
			
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
				<li class="active">
					<a href="javascript:;"><i class="icon-th"></i>目标3</a>
				</li>
				<li style="float:right"><i class="icon-edit"></i><a href="#" class="link-black">编辑</a></li>
			</ul>
			<div class="wall">
				<p>由Google公关部进行邀请各方人士及公司内部人员在特定时间参加年会。</p>
				<div class="progress progress-success">
					<div class="bar" style="width: 100%;">全部完成</div>
				</div>
			</div>
			
			
		</div>
	  </div>
	</div>
</body>
</html>