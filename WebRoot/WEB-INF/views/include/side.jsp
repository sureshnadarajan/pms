<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="span3">
		<div style="padding: 8px 0;" class="well">
			<ul class="nav nav-list">
			  <li class="nav-header">${ep.project.name }</li>
			  <li class="divider"></li>
			  <li class="${param.tag == 'new' ? 'active' : '' }">
			  	<a href="project.jspx?id=${ep.project.id }"><i class="${param.tag == 'new' ? 'icon-white' : '' } icon-home"></i>最新动态</a>
			  </li>
			  <li class="${param.tag == 'goal' ? 'active' : '' }">
			  	<a href="goal.jspx"><i class="${param.tag == 'goal' ? 'icon-white' : '' } icon-flag"></i>目标</a>
			  </li>
			  <li><a href="#"><i class="icon-folder-open"></i>资料库</a></li>
			  <li><a href="#"><i class="icon-file"></i>文件共享</a></li>
			  <li><a href="#"><i class="icon-user"></i>联系人</a></li>
			  <li><a href="showidea.jspx"><i class="icon-fire"></i>想法</a></li>
			  <li><a href="#"><i class="icon-warning-sign"></i>Bug</a></li>
			  <li><a href="#"><i class="icon-cog"></i>项目设置</a></li>
			</ul>
		</div>
	</div>