











<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	a{
		color: aquamarine;
	}
	a:hover{
		color: #C4C6CA;
	}
	a:after{
		color: aquamarine;
	}
</style>
<body>
	<table style="width:100%;text-align:center; color :azure;">
		<tr>
			<td ><img src="images/logo.png" height="60px;"></td>
			<td style="font-family:黑体;font-size:50px;font-weight:bold;">图书管理系统</td>	
			<td width="35%" align="right" style="font-size:13px;" valign="bottom">
				当前用户：<a href="${pageContext.request.contextPath }/showUser.do?id=${id}" target="rightFrame">${user.name}</a>&nbsp;&nbsp; 
				<a href="${pageContext.request.contextPath }/showUpdate.do" target="rightFrame">修改密码</a>&nbsp;&nbsp;&nbsp;
				<a href="${pageContext.request.contextPath }/login.jsp" target="_top">退出系统</a> 
			</td>
		</tr>
	</table>
</body>
</html>