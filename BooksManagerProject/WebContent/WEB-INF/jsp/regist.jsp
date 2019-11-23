<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册界面</title>
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
  			 window.location.href="${pageContext.request.contextPath }/login.jsp";
  		}
</script>
</head>
<body>
<div class="container">
	<section id="content">
		<form action="${pageContext.request.contextPath }/regist.do" method="post" onsubmit="return checkForm()">
			<h1>后台登录</h1>
			<div>
				<input type="text" placeholder="用户名" id="username" name = "name" />
			</div>
			<div>
				<input type="password" placeholder="密码" id="password" name = "pwd"/>
			</div>
			<div style="text-align:left;padding:11px">
				性&nbsp;&nbsp;&nbsp;&nbsp;别:
				<select name="sex">
	   				<option value="男">男</option>
					<option value="女">女</option>
				</select>
			</div>
			<div style="text-align:left;padding:11px">
				类&nbsp;&nbsp;&nbsp;&nbsp;型:
				<select name="state">
	   				<option value="0">学生</option>
					<option value="1">管理员</option>
				</select>
			</div>
			<div>
				<input type="submit" value="注册" class="btn btn-primary" id="js-btn-login"/>
				<input type="button" value="返回" class="btn btn-primary" id="js-btn-regist" onclick="jump()"/>
			</div>
		</form>
		
		<h4><font color="red">${msg }</font></h4>
		<div class="button">
			<h3>图书管理系统用户注册</h3>	
		</div> 
	</section>
	<jsp:include page="footer.jsp" />
	</div>
</body>
</html>