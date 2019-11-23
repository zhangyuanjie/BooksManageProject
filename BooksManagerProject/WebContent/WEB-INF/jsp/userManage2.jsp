<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
	<script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/date.js"></script>
    <script type="text/javascript">
	    function fun1(flag,id){
	    	if(flag == 1)
	    	{
	    		window.location.href = "${pageContext.request.contextPath }/showRegist.do";
	    	}
	    	else 
	    	{
	    		window.location.href = "${pageContext.request.contextPath }/deleteUserById.do?id=+"id;
	        }
	    }
	    function jump(){
  			 window.location.href="${pageContext.request.contextPath }/showRegist.do";
  		}
    </script>
</head>
<body>
	<center>
	  	<div>
	   		<table width="900" cellspacing="0" border="1">
	   			
	   			<tr bgcolor="#CCCCCC">
	   				<td width="200">姓名</td>
	   				<td>性别</td>
	   				<td>注册时间</td>
	   				<td>预警值</td>
	   				<td>更新时间</td> 
	   				<td colspan="2">操作</td>
	   			</tr>
	   			<c:forEach items="${uList}" var="u">
	   				<tr valign="middle">
	   					<td>${u.name}</td>
		   				<td>${u.sex}</td>
		   				<td>${u.time}</td>
		   				<td>预警值</td>
		   				<td>更新时间</td> 
		   				<td>
		   					<input type="button" value="查看" onclick="fun1(1,${u.id})"/>
		   				</td>
		   				<td>
		   					<input type = "button" onclick=javasrcipt:jump() value = "注册"/>
		   				</td>
		   			</tr>
	   			</c:forEach>
	   			
	   		</table> 
	   		<input type = "button" onclick=javasrcipt:jump() value = "注册"/>
	   		<jsp:include page="page_list.jsp" />
	   	</div>
	   	<h4><font color="red">${msg }</font></h4>
	   	<input type = "button" onclick=javasrcipt:jump() value = "注册"/>
   	</center>
</body>
</html>