<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>forward的原始页</title>
</head>
<body>
<h3>forward的原始页</h3>
<jsp:forward page="forward-result.jsp">
	<jsp:param value="29" name="age"/>
</jsp:forward>
</body>
</html>