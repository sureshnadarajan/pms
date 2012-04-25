<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<title>凯盛项目管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	</head>
<body class="body">
	
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="#">凯盛项目管理系统</a>
			</div>
		</div>
	</div>
	
	
	<div class="container">
	  <div class="row">
		<div class="span9">
			<form class="form-horizontal">
        <fieldset>
          <legend>创建文件夹</legend>
          <div class="control-group">
            <label class="control-label" for="input01">文件夹名称</label>
            <div class="controls">
              <input type="text" class="span5" id="input01" x-webkit-speech="undefined">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">文件夹描述</label>
            <div class="controls">
              <textarea class="span5" rows="8"></textarea>
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
