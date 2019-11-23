<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>图书管理系统登录界面</title>
<link rel="stylesheet" type="text/css" href="css/login-style.css" />
<link rel="stylesheet" type="text/css" href="css/login-body.css"/> 
<script type="text/javascript">
    	function checkForm()
    	{	
        	var userName = document.getElementById("username").value;
        	var pwd = document.getElementById("password").value;
        	if(userName == "")
        	{
        		alert("请输入用户名!");
        		return false;
            }
        	if(pwd == "")
        	{
        		alert("请输入密码!");
        		return false;
            }
            return true;
        }
    	function jump(){
   			 window.location.href="${pageContext.request.contextPath }/showRegist.do";
   		}
</script>
</head>
<body>
<div class="container">
	<section id="content">
		<form action="${pageContext.request.contextPath }/login.do" method="post" onsubmit="return checkForm()">
			<h1>后台登录</h1>
			<div>
				<input type="text" placeholder="用户名" id="username" name = "name" />
			</div>
			<div>
				<input type="password" placeholder="密码" id="password" name = "pwd"/>
			</div>
			
			<div>
				<input type="submit" value="登录" class="btn btn-primary" id="js-btn-login"/>
				<input type="button" value="注册" class="btn btn-primary" id="js-btn-regist" onclick="jump()"/>
			</div>
			<h4><font color="red">${msg }</font></h4>
		</form>
		 <div class="button">
			<h3>在线学习管理系统后台登录</h3>	
		</div> 
	</section>
	
</div>
</body>
</html>