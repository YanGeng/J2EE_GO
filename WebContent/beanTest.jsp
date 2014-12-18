<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>java bean 测试</title>
</head>
<body>
<!-- 创建lee.person的实例，该实例名为p1 -->
<jsp:useBean id="p1" class="lee.Person" scope="page"/>
<!-- 设置p1的name属性值 -->
<jsp:setProperty property="name" name="p1" value="crazyit.org"/>
<jsp:setProperty property="age" name="p1" value="23"/>

<!-- 输出p1的相关值 -->
<jsp:getProperty property="name" name="p1"/>
<br/>
<jsp:getProperty property="age" name="p1"/>
</body>
</html>