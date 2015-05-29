<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>这是一个登陆页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>

	<h1>骚年你登陆成功了！</h1>
	<%
		// 无法通过URL传递而解决中文乱码问题
		request.setCharacterEncoding("utf-8");
		request.setAttribute("class", "一年级二班");
	%>
	用户名:<%=request.getParameter("username")%>
	<br> 密码：<%=request.getParameter("password")%><br> 班级：<%=request.getAttribute("class")%><br>
	请求实体的MIME类型：<%=request.getContentType()%><br> 协议类型以及版本号：<%=request.getProtocol()%><br>
	服务器主机名：<%=request.getServerName()%><br> 服务器端口号：<%=request.getServerPort()%><br>
	请求文件的长度：<%=request.getContentLength()%><br> 请求客户端的IP地址：<%=request.getRemoteAddr()%><br>
	请求的真实路径：<%=request.getRealPath("login.jsp")%><br> 请求的上下文路径：<%=request.getContextPath()%><br>
</body>
</html>
