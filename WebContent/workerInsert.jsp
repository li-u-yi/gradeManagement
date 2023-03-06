<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>信息录入</title>
</head>
<body>
<%String userID = request.getParameter("id");
%>
<form action="InsertServlet?id=<%=userID%>" method="post">
		<table>
		<tr>
		<td><label>姓名:</label></td>
		<td><input type="text"name="username"autofocus required placeholder="请输入用户名"></td>
		</tr>
		<tr>
		<td><label>年龄:</label></td>
		<td><input type="text" name="age" placeholder="年龄" ></td>
		</tr>
		<tr>
		<td><label>部门:</label></td>
		<td><input type="text"name="department"autofocus required placeholder="部门"></td>
		</tr>
		<tr>
		<td><label>职位:</label></td>
		<td><input type="text"name="position"autofocus required placeholder="职位"></td>
		</tr>
		<tr>
		<td><label>入职时间:</label></td>
		<td><input type="text"name="date"autofocus required placeholder="入职时间"></td>
		</tr>
		<tr>
		<td><input type="submit" value="添加"></td></tr>
		</table>
		</form>
</body>
</html>