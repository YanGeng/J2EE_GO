<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>错误提示页面</title>
</head>
<body>
<!-- 提醒客户端系统出现异常 -->
系统出现异常<br/>
异常类型是：<%=exception.getClass() %><br/>
异常信息是:<%=exception.getMessage() %><br/>
</body>
</html>