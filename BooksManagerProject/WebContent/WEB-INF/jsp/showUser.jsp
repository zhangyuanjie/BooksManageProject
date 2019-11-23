<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户详情</title>
</head>
<link rel="stylesheet" type="text/css" href="css/login-style.css" />
<link rel="stylesheet" type="text/css" href="css/login-body.css"/> 
<script type="text/javascript">
		function jump(){
			window.location.href="${pageContext.request.contextPath }/showUpdate.do";
		}
		function showIndex(){
			window.location.href="${pageContext.request.contextPath }/showIndex.do";
		}
		function returnBooks(bid){
			alert("还书成功")
			window.location.href="${pageContext.request.contextPath }/returnBooks.do?bid="+bid;
		}
		function deleteUser(id){
			alert("删除成功")
			window.location.href="${pageContext.request.contextPath }/deleteUserById.do?id="+id;
		}
</script>
<style type="text/css">
	td{
		text-align: center;
		vertical-align:middle;
	}
	table{
		border-collapse:separate;
		 border-spacing:0px 10px;
	}
	input{
		padding-left: 6px;
		border-radius: 9px;
		vertical-align: middle;
	}
	#search_button{
		background-color: azure;
		color: #00AEEF;
		padding: 6px;
	}
	#search_button:hover{
		background-color: #00AEEF;
		color: lightyellow;
	}
</style>
<body>
	<div class="container">
		<jsp:include page="top.jsp" />
		<center><input type="button" value="返回主界面" id="search_button" onclick="showIndex()" style="margin-top: 20px;"/></center>
		<center><h2 style="padding-top: 40px;"><font color="azure">个人信息</font></h2></center>
		<div id="showUser" style="padding-top: 20px;padding-bottom: 50px;color:azure;">
				<table width="900" cellspacing="0" border="1">
					<tr style="color:azure;">
						<td width="200">姓名</td>
						<td width="200">性别</td>
						<td width="200">身份</td>
						<td width="200">注册时间</td>
						<td>操作</td>
					</tr>
					<tr>
						<td>${user.name}</td>
												
						<td>${user.sex}</td>
						
						<td>
							<c:if test="${user.state==1}">
								管理员
							</c:if>
							<c:if test="${user.state==0}">
								学生
							</c:if>
						</td>
						
						<td>${user.time}</td>
						<td><input type="button" id="search_button"  value="修改信息" onclick="jump()"/></td>
					</tr>
				</table>
		</div>
		
		<c:if test="${user.state==1}">
			<center><h2><font color="azure">用户信息表</font></h2></center>
			<div id="showBooks"style="padding-top: 20px;padding-bottom: 50px;color:azure;">
				<table width="900" cellspacing="0" border="1">
						<tr style="color:azure;">
							<td width="200">姓名</td>
							<td width="200">性别</td>
							<td width="200">身份</td>
							<td width="200">注册时间</td>
							<td>操作</td>
						</tr>
					<c:forEach items="${uList}" var="u">
						<tr>
							<td>${u.name}</td>
													
							<td>${u.sex}</td>
							
							<td>学生</td>
							
							<td>${u.time}</td>
							
							
							<td><input type="button" id="search_button"  value="删除学生" onclick="deleteUser(${u.id})"/></td>
						</tr>
					</c:forEach>
					<center><h2><font color="azure">${msg2}</font></h2></center>
				</table>
			</div>
		</c:if>
		
		<center><h2><font color="azure">借阅书籍表</font></h2></center>
		<div id="showBooks"style="padding-top: 20px;padding-bottom: 50px;color:azure;">
			<table width="900" cellspacing="0" border="1">
					<tr style="color:azure;">
						<td width="160">书籍名称</td>
						<td width="160">作者</td>
						<td width="160">出版社</td>
						<td width="160">类别</td>
						<td width="160">藏书位置</td>
						<td>操作</td>
					</tr>
				<c:forEach items="${bList}" var="b">
					<tr>
						<td>${b.name}</td>
												
						<td>${b.author}</td>
						
						<td>${b.publisher}</td>
						
						<td>${b.family}</td>
						
						<td>${b.location}</td>
						
						<td><input type="button" value="还书" id="search_button"  onclick="returnBooks(${b.bid})"/></td>
					</tr>
				</c:forEach>
				
				<center><h2><font color="azure">${msg}</font></h2></center>
			</table>
		</div>
		<jsp:include page="footer.jsp" />
	</div>
	
</body>
</html>