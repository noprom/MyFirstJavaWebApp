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

<title>My JSP 'LifeCircle.jsp' starting page</title>

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
	OUT 内置对象
	<br>
	<%
		out.println("<h2>你妹哟<h2/>");
		out.println("你在干啥子<br>");
		out.println("你在干啥子<br>");
		out.flush();
//		out.clear();// 此处会抛出异常
		out.clearBuffer(); // 此处不会抛出异常
		
		out.println("你在干啥子<br>");
		out.println("你在干啥子<br>");
	%>
	缓冲区大小：<%=out.getBufferSize()%>
	缓冲区剩余大小：<%=out.getRemaining()%>
	是否自动清空缓冲区：<%=out.isAutoFlush()%>
</body>
</html>
