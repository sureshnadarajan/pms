<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
	<head>
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
          <legend>开始一个新项目</legend>
          <div class="control-group">
            <label class="control-label" for="input01">项目名称</label>
            <div class="controls">
              <input type="text" class="span5" id="input01" x-webkit-speech="undefined">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">项目描述</label>
            <div class="controls">
              <textarea class="span5" rows="4"></textarea>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="multiSelect">负责人</label>
            <div class="controls">
              <select id="multiSelect">
                <option></option>
                <option>tom</option>
                <option>mary</option>
              </select>
            </div>
          </div>
         <div class="control-group">
            <label class="control-label" for="input01">项目成员</label>
            <div class="controls">
              <input type="text" class="span5" id="input01" x-webkit-speech="undefined">
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