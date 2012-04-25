<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>凯盛项目管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	<script type="text/javascript" src="http://lib.sinaapp.com/js/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
  </head>
<body class="body">
	
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="#">Kaishengit PMS</a>
			</div>
		</div>
	</div>
	
	
	<div class="container" style="margin-top:50px">
	  <div class="row">
		<div class="span3">
			<div style="padding: 8px 0;" class="well">
				<ul class="nav nav-list">
				  <li class="nav-header">${sessionScope.ep.project.name }</li>
				  <li class="divider"></li>
				  <li><a href="#"><i class="icon-home"></i>最新动态</a></li>
				  <li>
					<a href="#"><i class="icon-flag"></i>目标</a>
				  </li>
				  <li><a href="#"><i class="icon-folder-open"></i>资料库</a></li>
				  <li><a href="#"><i class="icon-file"></i>文件共享</a></li>
				  <li><a href="#"><i class="icon-user"></i>联系人</a></li>
				  <li class="active"><a href="#"><i class="icon-white icon-fire"></i>想法</a></li>
				  <li><a href="#"><i class="icon-warning-sign"></i>Bug</a></li>
				  <li><a href="#"><i class="icon-cog"></i>项目设置</a></li>
				</ul>
			</div>
		</div>
		<div class="span9">
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
				<li class="active">
					<a href="idea.html"><i class="icon-fire"></i>想法</a>
				</li>
				<li class="pull-right"><i class="icon-plus"></i><a href="showidea.jspx?m=new" class="link-black">发表想法</a></li>
			</ul>
			<div class="wall" style="margin-bottom:20px;">
				<c:if test="${!empty sessionScope.idealist }">
					<c:forEach var="idea" items="${sessionScope.idealist }">
					<blockquote>
						<h4><a href="showidea.jspx?m=show&id=${idea.id}">${idea.title }</a></h4>
					    <p style="font-size:14px;line-height:1.5;">${idea.content}</p>
					    <small >${idea.employee.username}发布于 ${idea.createtime}</small>
					    <a href="" title="编辑"><i class="icon-pencil"></i></a>
					    <a href="" title="删除"><i class="icon-trash"></i></a>
					 </blockquote>
					</c:forEach>
				</c:if>
				
				<div class="clear"></div>
			</div>
		</div>
	  </div>
	</div>
  </body>
</html>
