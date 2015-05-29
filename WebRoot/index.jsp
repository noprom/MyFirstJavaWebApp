<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
   <h1>你狠牛逼哦</h1>
   <!-- 浏览器可见注释 -->
   <!-- JSP注释 -->
   <%
		// java单行注释，浏览器不可见
		 /* java多行注释，浏览器不可见  */
		 out.println("我会说这是Hello World么?");
    %>
    <!-- JSP申明 -->
    <%!
    	/* 申明变量和函数  */
    	String s = "张三";
    	int add(int x,int y){
    		return x+y;
    	}
     %>
     
     <!-- JSP表达式 -->
     <h1>
     你好，<%=s %><br>
     x+y=<%=add(10,5) %><br>
     </h1>
    
  </body>
</html>
