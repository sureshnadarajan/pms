<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>凯盛项目管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	</head>
<body class="body">
	
	<%@include file="include/top.jsp" %>
	
	
	<div class="container">
	  <div class="row">
		<div class="span9">
			<form class="form-horizontal" method="post" action="task.jspx">
				<input type="hidden" name="m" value="create"/>
       <fieldset>
          <legend>添加新任务</legend>
          <div class="control-group">
            <label class="control-label" for="input01">任务名称</label>
            <div class="controls">
              <input type="text" class="span5" id="input01" name="name">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">开始时间</label>
            <div class="controls">
              <input type="text" class="span5" id="input01" name="begintime">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">截止时间</label>
            <div class="controls">
              <input type="text" class="span5" id="input01" name="endtime">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">任务描述</label>
            <div class="controls">
              <textarea class="span5" rows="8" name="desc"></textarea>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="multiSelect">状态</label>
            <div class="controls">
              <select id="multiSelect" name="state">
                <option value="新任务">新任务</option>
                <option value="进行中">进行中</option>
                <option value="已完成">已完成</option>
              </select>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="multiSelect">级别</label>
            <div class="controls">
              <select id="multiSelect">
                <option value="重要紧急">重要紧急</option>
                <option value="重要不紧急">重要不紧急</option>
                <option value="紧急不重要">紧急不重要</option>
                <option value="不紧急不重要"></option>
              </select>
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