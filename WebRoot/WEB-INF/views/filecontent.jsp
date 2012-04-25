<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta charset="UTF-8">
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
	
	
	<div class="container">
	  <div class="row">
		<div class="span3">
			<div style="padding: 8px 0;" class="well">
				<ul class="nav nav-list">
				  <li class="nav-header">Googel Party</li>
				  <li class="divider"></li>
				  <li><a href="#"><i class="icon-home"></i>最新动态</a></li>
				  <li>
					<a href="#"><i class="icon-flag"></i>目标</a>
				  </li>
				  <li><a href="#"><i class="icon-folder-open"></i>资料库</a></li>
				  <li class="active"><a href="#"><i class="icon-white icon-file"></i>文件共享</a></li>
				  <li><a href="#"><i class="icon-user"></i>联系人</a></li>
				  <li><a href="#"><i class="icon-fire"></i>想法</a></li>
				  <li><a href="#"><i class="icon-warning-sign"></i>Bug</a></li>
				  <li><a href="#"><i class="icon-cog"></i>项目设置</a></li>
				</ul>
			</div>
		</div>
		<div class="span9">
			
			

			<a href="new_file.html" class="btn btn-primary" style="float:right"><i class="icon-white  icon-share"></i>上传资料</a>
			<div class="clear"></div>
			
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
				<li class="active">
					<i class="icon-th"></i><a href="file.html">文件共享</a>><a href="task.html">客户资料</a>
				</li>
				<li style="float:right"><a href="edit_goal.html" class="link-black" title="删除该文件夹"><i class="icon-trash"></i></a></li>
			</ul>
			<div class="wall">
				<table class="table table-striped">
					<thead>
						<tr>
							<th width="30px"></th>
							<th width="60%">名称</th>
							<th width="20%">大小</th>
							<th>创建人</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<img src="img/file.png"/>
							</td>
							<td><a href="#">黑客学习资料.doc</a></td>
							<td>5.5MB</td>
							<td>tom</td>
							<td><a href=""><i class="icon-trash"></i></a></td>
						</tr>
						<tr>
							<td>
								<img src="img/file.png"/>
							</td>
							<td><a href="#">项目报表实例.xls</a></td>
							<td>3456MB</td>
							<td>mary</td>
							<td><a href=""><i class="icon-trash"></i></a></td>
						</tr>
						<tr>
							<td>
								<img src="img/file.png"/>
							</td>
							<td><a href="#">英语文档.pdf</a></td>
							<td>5.5MB</td>
							<td>lucy</td>
							<td><a href=""><i class="icon-trash"></i></a></td>
						</tr>
					</tbody>
				</table>
				
				<a href="file.html">←返回</a>
			</div>
			
			
		</div>
	  </div>
	</div>
  </body>
</html>
