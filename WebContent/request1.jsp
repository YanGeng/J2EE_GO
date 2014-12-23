<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.lang.String.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>获取请求头/请求参数</title>
</head>
<body>
<%
//request.setCharacterEncoding("UTF-8");
// response.setCharacterEncoding("UTF-8");
// 获取所有请求头的名称
Enumeration<String> headerNames = request.getHeaderNames();
while (headerNames.hasMoreElements()) {
	String headerName = headerNames.nextElement();
	// 获取每个请求、及其对应的值
	out.println(headerName + "-->" + request.getHeader(headerName) + "<br/>");
}
out.println("<hr/>");
// 下面依此获取表单域的值
String name = request.getParameter("name");
//String gender = request.getParameter("gender");
String gender = new String(request.getParameter("gender").getBytes("ISO-8859-1"),"utf-8");
// 如果某个请求参数有多个值，将使用该方法获取多个值
String[] colorT = request.getParameterValues("color");
String[] color = new String[colorT.length];

//for (int i = 0; i < colorT.length; ++i ) {
int i = 0;
for (String c : colorT) {
	color[i++] = new String(c.getBytes("ISO-8859-1"),"utf-8");
}
// String[] color = new String(request.getParameterValues("color").getBytes("ISO-8859-1"),"utf-8");
//String national = request.getParameter("country");
String national = new String(request.getParameter("country").getBytes("ISO-8859-1"),"utf-8");
%>
<!-- 下面依此给出表单的值 -->
您的姓名：<%=name %><hr/>
你的性别：<%=gender %><hr/>
<!-- 输出复选框中的颜色 -->
您喜欢的颜色：<%for(String c : color)
	{out.println(c + " ");}%><hr/>
您来自的国家：<%=national %><hr/>
</body>
</html>