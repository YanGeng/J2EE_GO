<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>application 测试</title>
</head>
<body>
<!-- JSP 声明 -->
<%!
int i = 0;
%>
<!-- 将 i 值自增后放入application中 -->
<%
application.setAttribute("counter", String.valueOf(++i));
%>
<!-- 输出 i 的值 -->
<%=i%>
</body>
</html>