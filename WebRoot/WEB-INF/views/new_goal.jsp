<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<title>凯盛项目管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	</head>
<body class="body">
	
	<%@include file="include/top.jsp" %>
	
	
	<div class="container">
	  <div class="row" style="margin-top:50px">
		<div class="span9">
			<form class="form-horizontal" method="post" action="goal.jspx">
				<input type="hidden" name="m" value="create"/>
        <fieldset>
          <legend>添加一个新目标</legend>
          <div class="control-group" style="margin-top:30px">
            <label class="control-label" for="input01">目标名称</label>
            <div class="controls">
              <input type="text" name="name" class="span5" id="input01" x-webkit-speech="undefined">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">目标描述</label>
            <div class="controls">
              <textarea class="span5" rows="8" name="desc"></textarea>
            </div>
          </div>
          
          <div class="form-actions">
            <button type="submit" class="btn btn-primary">保存</button>
            <button class="btn" onclick="location.back()">返回</button>
          </div>
        </fieldset>
      </form>          
          	
		</div>
		<div class="span3">
			
		</div>
	  </div>
	</div>
</body>
</html>