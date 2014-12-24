<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%--@ page import="com.mysql.jdbc.Driver" --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>小脚本测试</title>
</head>
<body>
<%
// 注册数据库驱动
Class.forName("com.mysql.jdbc.Driver");
// 获取数据库连接
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee_go","root","");
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM user_info");
%>
<table bgcolor="#9999dd" border="1" width="600">
// 遍历结果集
<%
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
<%} %>
</table>
</body>
</html>