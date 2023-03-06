<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	Cookie[] cookies=request.getCookies();
	String userid=null;
	String password=null;
	if(cookies!=null){
		//遍历cookies数组？
		for(Cookie cookie : cookies){
			String name=cookie.getName();
				if("userid".equals(cookie.getName())){
					userid=cookie.getValue();
					}
				if("password".equals(cookie.getName())){
					password=cookie.getValue();
					}
		}
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册登录</title>
	<script>//cookie
		<%
		String message=(String)request.getAttribute("message");
		if(message!=null)
			out.print("alert(\""+message+"\")");
		if(userid!=null)
			out.print("alert(\"你好:"+userid+",自动登录成功!\")location.href='normal.jsp'");
		%>
	</script>
	<link rel="stylesheet" type="text/css" href="css/first.css">
</head>
 
<body>
<headers>员工管理系统</headers>
<section>
<div class="d1" >我的账户</div>
	<%if(userid!=null){
	%>
	<div class="d2" >您已登录</div>
	<%
	}else{
	%>
	<div class="d2" >请登录...</div>
	<%
	}
	%>

<form action="loginCheckServlet" method="post" name="loginform">
		<table>
		<tr>
		<td><label>工号:</label></td>
		<td><input type="text"name="userid"autofocus required placeholder="请输入工号"></td>
		</tr>
		<tr><td></td></tr>
		<tr>
		<td><label>密码:</label></td>
		<td><input type="password" name="password" placeholder="密码" ></td>
		</tr>
		<tr>
		<td><label>验证码:</label></td>
		<td><input type="text" name="Verify" placeholder="验证码" ></td>
		<td><img class="Verify" onclick="changeCode()" src="getVerify"></td>	
		</tr>
		<tr>
		<td></td>
		<td>
		<input type="checkbox"name="role"value="2"checked>是否管理员
		<input type="checkbox"name="rememberMe"value="记住用户名"checked>记住用户名
		</td>
		</tr>
		<tr><td></td></tr>
		<tr>
		 <td><input type="submit" value="登录">
		 <input type="button"value="注册" onclick="register()"></td>
		 </tr>
		</table>
		</form>
		</section>
		
	<script>
    function changeCode(){
    	//加时间戳，防止浏览器利用缓存
    	var src ="getVerify?"+new Date().getTime();
    	var codeImage = document.getElementsByClassName('Verify')[0];
    	codeImage.setAttribute('src',src);
    }
    function register(){
    	 document.loginform.method="post";
         document.loginform.target="rightframe";
         document.loginform.action="register.jsp";
         document.loginform.submit();
    }
    </script>
</body>
</html>