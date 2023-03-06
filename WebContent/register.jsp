<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>员工注册</title>
</head>
<body>
<form action="registerServlet"method="post">
<table>
<tr>
<td><label>工号：</label></td>
<td><input type="text"name="id"autofocus required placeholder="请输入工号"></td>
</tr>
<tr>
<td><label>姓名：</label></td>
<td><input type="text"name="name"autofocus required placeholder="请输入姓名"></td>
</tr>
<tr>
<td><label>请输入密码:</label></td>
<td><input type="password" name="password" id="pw"placeholder="请输入密码" onkeyup="checkpassword()"></td>
</tr>
<tr>
<td><label>再次输入密码:</label></td>
<td><input type="password" id="repw"name="psw" placeholder="请再次输入密码" onkeyup="checkpassword()"></td>
<td><span id="tishi"></span></td>
</tr>
<tr>
<td><label>权限:</label></td>
<td><input type="radio"name="role"value="1">普通用户
<input type="radio"name="role"value="2">管理员</td>
</tr>


 
  <tr>
   <td><input type="submit" id="tijiao" value="提交"></td>
   </tr>
   
   
</table>
</form>
<script>
function checkpassword(){
	var psw1=document.getElementById("pw").value;
	var psw2=document.getElementById("repw").value;
	if (psw1!=psw2) {
		if(psw2!=""){
			document.getElementById("tishi").innerHTML="<font color='red'>两次输入不一致，请重新输入";
			}
		document.getElementById("tijiao").disabled = true;
	}
	else{
		document.getElementById("tishi").innerHTML="<font color='green'>输入正确";
		document.getElementById("tijiao").disabled = false;
	}
	}
</script>
</body>
</html>