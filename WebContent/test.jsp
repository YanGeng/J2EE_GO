<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>第二个JSP页面</title>
</head>
<body>
<!-- 下面是JSP代码 -->
<%for(int i = 0; i < 7; ++i)
{
	out.println("<font size='" + i + "'>"+"疯狂Java训练营</font>");
%>
<%-- 疯狂Java训练营</font> --%>
<br/>
<%} %>
<font size=10>来不来</font>
</body>
</html>