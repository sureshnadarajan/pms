<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="include/base.jsp" %>
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
	
	<%@ include file="include/top.jsp" %>
	
	
	<div class="container">
	  <div class="row">
		<jsp:include page="include/side.jsp">
			<jsp:param value="goal" name="tag"/>
		</jsp:include>
		<div class="span9">
			
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
				<li class="active">
					<a href="javascript:;"><i class="icon-th"></i>${goal.name }</a>
				</li>
				<li style="float:right">
					<i class="icon-edit"></i><a href="edit_goal.html" class="link-black">编辑</a>
				</li>
			</ul>
			<div class="wall">
				<p>${goal.desc }</p>
				<div class="progress progress-danger">
					<div class="bar" style="width: 60%;">当前目标总进度完成60%</div>
				</div>

				<div class="page-header">
					<a href="task.jspx?m=new" class="btn btn-success">
						<i class="icon-plus icon-white"></i>添加新任务
					</a>
				</div>
				
				<c:if test="${fn:length(taskList) == 0 }">
					该目标没有任何任务！
				</c:if>

				<dl>
        			
					<c:forEach items="${taskList }" var="task">
	        			<dt style="margin-top:15px">
	        				<i class="icon-bookmark"></i>
	        				<a href="#">${task.name }</a>&nbsp;&nbsp;&nbsp;[${task.employee.username }]
	        			</dt>
	        			<dd>${task.desc }</dd>
	        			<div class="progress progress-success">
						  <div class="bar" style="width:${task.rate}%;">${task.rate }%</div>
						</div>
					</c:forEach>

        			
      			</dl>

			</div>
			
		</div>
	  </div>
	</div>
</body>
</html>