<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
// 取出session范围的itemMap属性
Map<String, Integer> itemMap = (Map<String, Integer>)session.getAttribute("itemMap");
// 如果map对象为空，则初始化Map对象
if (itemMap == null) {
	itemMap = new HashMap<String, Integer>();
	itemMap.put("书籍", 0);
	itemMap.put("电脑", 0);
	itemMap.put("汽车", 0);
}

// 获取上一个页面的请求参数
String[] buys = request.getParameterValues("item");
if (buys != null && buys.length > 0) {
	for (String item : buys) {
		if (item.equals("book")) {
			int num1 = itemMap.get("书籍");
			itemMap.put("书籍", num1 + 1);
		} else if (item.equals("computer")) {
			int num2 = itemMap.get("电脑");
			itemMap.put("电脑", num2 + 1);
		} else if (item.equals("car")) {
			int num3 = itemMap.get("汽车");
			itemMap.put("汽车", num3 + 1);
		}
	}
}

// 将itemMap对象放到设置成session范围的itemMap属性
session.setAttribute("itemMap", itemMap);
%>
您所购买的物品：<br/>
书籍：<%=itemMap.get("书籍") %>本<br/>
电脑：<%=itemMap.get("电脑") %>台<br/>
汽车：<%=itemMap.get("汽车") %>辆<br/>
<p><a href="shop.jsp">继续购买</a></p>
</body>
</html>