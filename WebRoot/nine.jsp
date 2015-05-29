<%@page import="java.io.IOException"%>
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

<title>My JSP 'nine.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
* {
	font-family: '微软雅黑';
}
</style>

</head>

<body>
	<h1>骚年，看看着是我的9x9乘法表</h1>
	
	<%!String printMulTable1() {
		String s = "";
		for (int i = 1; i <= 9; ++i) {
			for (int j = 1; j <= i; ++j) {
				s += i + "*" + j + "=" + (i * j) + "&nbsp;&nbsp;&nbsp;&nbsp;";
			}
			s += "<br>";
		}
		return s;
	}

	// 使用JSP内置out对象，使用脚本方式调用，打印九九乘法表
	void printMulTable2(JspWriter out) throws IOException {
		for (int i = 1; i <= 9; ++i) {
			for (int j = 1; j <= i; ++j) {
				String s = i + "*" + j + "=" + (i * j) + "&nbsp;&nbsp;&nbsp;&nbsp;";
				out.println(s);
			}
			out.println("<br>");
		}
	}%>
	<h2>一、使用表达式来生成：</h2>
	<%=printMulTable1() %>
	<h2>二、使用脚本来生成：</h2>
	<%
		printMulTable2(out);
	%>
</body>
</html>
