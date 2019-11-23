<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息修改</title>
</head>
<link rel="stylesheet" type="text/css" href="css/login-style.css"/>
<link rel="stylesheet" type="text/css" href="css/login-body.css"/> 
<script type="text/javascript">
		var isSubmit = false;
    	function checkForm()
    	{	
        	var pwd = document.getElementById("password").value;
        	if(pwd == "")
        	{
        		alert("请输入密码!");
        		return false;
            }
        	if(isSubmit == false)
            {
                alert("请仔细核对后信息再点修改，输入后无法更改！");
                isSubmit = true;
                return false;
            }
            return true;
        }
    	function jump(){
  			 window.location.href="${pageContext.request.contextPath }/login.jsp";
  		}
</script>
<body>
<div class="container">
	<section id="content">
		<form action="${pageContext.request.contextPath }/updateUser.do" method="post" onsubmit="return checkForm()">
			<h1>信息修改</h1>
			<div>
				<input type="text" placeholder="用户名" id="username" value=${user.name } name = "name" readonly="readonly"/>
			</div>
			<div>
				<input type="password" placeholder="密码" id="password" name = "pwd" />
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
				<input type="submit" value="修改" class="btn btn-primary" id="js-btn-update"/>
				<input type="button" value="返回" class="btn btn-primary" id="js-btn-index" onclick="jump()"/>
			</div>
		</form>
		
		<h4><font color="red">${msg }</font></h4>
		<div class="button">
			<h3>用户信息修改</h3>	
		</div> 
	</section>
	</div>
</body>
</html>