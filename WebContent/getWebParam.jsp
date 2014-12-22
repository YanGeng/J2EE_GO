<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>application 测试</title>
</head>
<body>
<%
String driver = application.getInitParameter("driver");
String url = application.getInitParameter("url");
String user = application.getInitParameter("user");
String pass = application.getInitParameter("pass");

Class.forName(driver);
Connection conn = DriverManager.getConnection(url, user, pass);
Statement  stmt = conn.createStatement();

ResultSet rs = stmt.executeQuery("SELECT * FROM user_info");
%>
<table bgcolor="#9999dd" border="1" width="600">
<%
// 遍历结果集
while (rs.next()) {
%>
<tr>
<!-- 输出结果集 -->
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
</tr>
<%
}
%>
</table>
</body>
</html>