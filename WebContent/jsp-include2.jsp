<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jsp-include测试</title>
</head>
<body>
<jsp:include page="forward-result.jsp">
<jsp:param value="32" name="age"/>
<jsp:param value="Tony" name="username"/>
</jsp:include>
</body>
</html>