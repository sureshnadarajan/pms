<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
		 <head>
		    <META http-equiv=Content-Type content="text/html; charset=utf8">
		 </head>
		<script language="javascript">
		var XMLHttpReq;
		//创建XMLHttpRequest对象
		function createXMLHttpRequest() {
		if(window.XMLHttpRequest) { //Mozilla 浏览器
		XMLHttpReq = new XMLHttpRequest();
		}
		else if (window.ActiveXObject) { // IE浏览器
		try {
		XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
		try {
		XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (e) {}
		}
		}
		}
		//发送请求函数
		function sendRequest() {
		createXMLHttpRequest();
		var url = "auto.jsp";
		XMLHttpReq.open("GET", url, true);
		XMLHttpReq.onreadystatechange = processResponse;//指定响应函数
		XMLHttpReq.send(null); // 发送请求
		}
		// 处理返回信息函数
		function processResponse() {
		if (XMLHttpReq.readyState == 4) { // 判断对象状态
		if (XMLHttpReq.status == 200) { // 信息已经成功返回，开始处理信息
		DisplayHot();
		setTimeout("sendRequest()", 1000);
		} else { //页面不正常
		window.alert("您所请求的页面有异常。");
		}
		}
		}
		function DisplayHot() {
		var name = XMLHttpReq.responseXML.getElementsByTagName("name")[0].firstChild.nodeValue;
		var count = XMLHttpReq.responseXML.getElementsByTagName("text")[0].firstChild.nodeValue;
		document.getElementById("product").innerHTML = name;
		document.getElementById("count").innerHTML = count;
		}
		
		</script>
		
s  </body>
</html>
