<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>增加cookie</title>
</head>
<body>
<%
// 获取请求参数
String name = request.getParameter("name");
// 以获取到的请求参数值，创建一个Cookie对象
Cookie c = new Cookie("username", name);
// 设置cookie对象的生存期限
c.setMaxAge(24 * 3600);
// 向客户端添加Cookie对象
response.addCookie(c);
%>
</body>
</html>