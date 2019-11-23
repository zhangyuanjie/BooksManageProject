<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页界面</title>
<link rel="stylesheet" type="text/css" href="css/login-style.css" />
<link rel="stylesheet" type="text/css" href="css/login-body.css"/> 
<style type="text/css">
			#search_div{
				width: 100%;
				height: 600px;
			}
			#text{
				padding-top: 200px;
			}
			#search_text{
				padding-left: 10px;
			}
			#search_button{
				padding-left: 20px;
				padding-right: 20px;
				width 275px;
			}
			input{
				height: 50px;
				border: #00AEEF;
				border-radius: 9px;
				vertical-align: middle;
			}
			#search_button{
				background-color: azure;
				color: #00AEEF;
			}
			#search_button:hover{
				background-color: #00AEEF;
				color: lightyellow;
			}
			
</style>
<script type="text/javascript">
	function checkForm()
	{	
		var userName = document.getElementById("search_text").value;
		if(userName == "")
		{
			alert("请输入查阅书名!");
			return false;
	    }
	    return true;
	}
</script>
</head>
<body>
<div class="container">
	<jsp:include page="top.jsp" />
	<div id="search_div">
		<div id="text">
			<form action="${pageContext.request.contextPath }/selectBooksByName.do" method="post" onsubmit="return checkForm()" >
				<input type="text" placeholder="查阅书籍名称" id="search_text" name = "name" size="110"/>
				<input type="submit" value="查询" id="search_button" />
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</div>
</body>
</html>