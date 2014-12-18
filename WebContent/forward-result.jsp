<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>forward结果页</title>
</head>
<body>
<!-- 使用request内置对象获取age参数的值 -->
<%=request.getParameter("age")%>
<%=request.getParameter("username")%>
</body>
</html>