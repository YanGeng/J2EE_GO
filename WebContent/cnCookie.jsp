<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Cookie c = new Cookie("cnName", URLEncoder.encode("孙悟空", "utf-8"));
c.setMaxAge(24 * 3600);
response.addCookie(c);

Cookie[] cookies = request.getCookies();
for (Cookie cookie : cookies) {
	if (cookie.getName().equals("cnName")) {
		out.println(URLDecoder.decode(cookie.getValue(), "utf-8"));
	}
}
%>
</body>
</html>