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
	
	
	<div class="container" style="margin-top:50px;">
	  <div class="row">
		<div class="span3">
			<div style="padding: 8px 0;" class="well">
				<ul class="nav nav-list">
				  <li class="nav-header">${sessionScope.ep.project.name }</li>
				  <li class="divider">&ldquo;</li>
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
					<a href="#"><i class="icon-fire"></i>想法</a>>使用Ajax技术${sessionScope.idea.title }
				</li>
				
			</ul>
			<div class="wall">
				  <div class="page-header">
					<h3>${sessionScope.idea.title}&nbsp;&nbsp;<small>${sessionScope.idea.employee.username}发布于 ${sessionScope.idea.createtime}</small></h3>
				  </div>
				  <p>${sessionScope.idea.content}</p>
				  
				  <div class="line">
					评论
				  </div>
				  <form action="showidea.jspx?m=comment" method="post" >
				  
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
				  
				  
					<textarea name="content" id="" class="span8" rows="5"></textarea>
					<br/>
					<button class="btn btn-primary">发布</button>
				  </form>
				  <c:if test="${empty sessionScope.ideacomments}">
				 				 <blockquote>
									暂无评论！								  
								</blockquote>
				 </c:if>
				 <c:if test="${!empty sessionScope.ideacomments }">
				 		<c:forEach var="ideacomment" items="${sessionScope.ideacomments }">
				 				 <blockquote>
								  ${ideacomment.content}
								  <small>
									${ideacomment.employee.username}发布于 ${ideacomment.createtime}
									<a href="" title="编辑"><i class="icon-pencil"></i></a>
								    <a href="" title="删除"><i class="icon-trash"></i></a>
								  </small>
								  
								</blockquote>
				 		</c:forEach>
				 </c:if>
				 
				 
				<a href="idea.html">←返回想法列表</a>
			</div>
		</div>
	  </div>
	</div>
  </body>
</html>
