<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <center><h2>用户登录</h2>
    <form action="LoginServlet" method="post">
    	<table>
    		<tr><td>用户名：</td><td><input type="text" name="name"/></td></tr>
    		<tr><td>密&nbsp;&nbsp;码：</td><td><input type="password" name="pwd"/></td></tr>
    		<tr><td colspan="2"><input type="submit" value="登录"/>&nbsp;&nbsp;&nbsp;&nbsp;
    							<input type="button" value="注册" onclick="window.location.href='reg.jsp'"/>
    		</td></tr>
    	</table>
    </form></center>
  </body>
</html>
