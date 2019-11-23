<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询结果</title>
</head>
<link rel="stylesheet" type="text/css" href="css/login-style.css" />
<link rel="stylesheet" type="text/css" href="css/login-body.css"/> 
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
<script type="text/javascript">
    	function borrowBook(bid, id){
    		alert("此书以为你预订，可在个人信息页面查看，请在一个工作日内到藏书位置取走相关书籍。");
   			window.location.href="${pageContext.request.contextPath }/borrowBook.do?bid="+bid+"&id="+id;
   		}
    	function showIndex(){
			window.location.href="${pageContext.request.contextPath }/showIndex.do";
		}
    	function deleteBook(bid){
    		alert("此书已从书库中删除");
   			window.location.href="${pageContext.request.contextPath }/deleteBook.do?bid="+bid;
   		}
</script>
<body>
	<div class="container">
			<jsp:include page="top.jsp" />
			<center><input type="button" value="返回主界面" onclick="showIndex()"  id="search_button"  style="margin-top: 20px;"/></center>
			<div id="showUser" style="padding-top: 50px;padding-bottom: 80px;color:azure;">
				<table width="900" cellspacing="0" border="1">
		   			<form action="${pageContext.request.contextPath }/selectBooksByKey.do" method="post" id="myfrom">
		   				<tr align="center">
		   				 	<td colspan="8">
		   						书籍名称：<input name="name" size=10/>	
		   						作者：<input name="author"  size=10/>
								出版社：<input name="publisher"  size=10/>
								类别：<input name="family"  size=10/>	
		   						<input type="submit" value="查询" id="search_button" size=20/>
			   					<br/>
		   					</td>
		   				</tr>
		   			</form>
					
		   			<tr>
		   				<td width="150">书籍名称</td>
		   				<td width="150">作者</td>
		   				<td width="200">出版社</td>
		   				<td width="80">类别</td>
		   				<td>借阅情况</td> 
		   				<td colspan="3">操作</td>
		   			</tr>
		   			<c:forEach items="${bList}" var="b">
						<tr valign="middle">
								<td>${b.name}</td>
							
								<td>${b.author}</td>
								
								<td>${b.publisher}</td>
								
								<td>${b.family}</td>
								
								<c:if test="${b.lend==1}">
			   						<td>未借出</td>
			   					</c:if>
			   					<c:if test="${b.lend==0}">
			   						<td>已借出</td>
			   					</c:if>
								<td>
									<input type="button" value="借阅" ${b.lend==0?"disabled":""} onclick="borrowBook(${b.bid},${id})"/>
								</td>
								<td>
									<input type="button" value="删除" ${user.state==0?"disabled":""} onclick="deleteBook(${b.bid})"/>
								</td>
						</tr>
		   			</c:forEach>
		   			<center><h2><font color="azure">${msg}</font></h2></center>
		   		</table> 
		</div>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>