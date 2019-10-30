<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "로그인";
	String pageSideName = "구트투어 로그인";
	String pageImage = "main_img_banner_6.jpg";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"crossorigin="anonymous"></script>
		<link rel="stylesheet" href="loginForm.css" type="text/css" />
		<link rel="stylesheet" href="../headerFooterStyle.css" type="text/css" />
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		<script>
		
			function popup() {
				var url = "pop.jsp";
				var name = "popup test";
				var option = "width=530, height=340, top=200, left=200 resizable=no"
				window.open(url,name,option);
			}
	
			function CheckIt_com(form) {
	
	
	
				if (userId.value == "") { alert("아이디를 입력하여 주십시오!"); inputID.focus(); return false; }
	
	
				if (userPwd.value == "") { alert("비밀번호를 입력하여 주십시오!"); inputPassword.focus(); return false; }
	
				document.submit();
	
			}
	
	
			function CheckIt_mem(form) {
	
				if (userId.value == "") { alert("아이디를 입력하여 주십시오!"); inputID.focus(); return false; }
	
	
				if (userPwd.value == "") { alert("비밀번호를 입력하여 주십시오!"); inputPassword.focus(); return false; }
	
				document.submit();
			}
	
	
		</script>
	</head>
	<body>
	<%@ include file="../header.jspf"%>
	<section>
	<div>
		<form method="post" class="form-signin" action="<%=request.getContextPath()%>/project/register/loginOk.do">
			<div class="text-center">
				<img src="<%=request.getContextPath()%>/image/key.png">
				<h1 class="h3 mb-3 font-weight-bold">로그인</h1>
	
			</div>
	
			<div class="form-label-group">
				<input type="text" id="userId" name="userId" class="form-control" required autofocus>
				<label for="userId">아이디</label>
			</div>
	
			<div class="form-label-group">
				<input type="password" id="userPwd" name="userPwd" class="form-control">
				<label for="userPwd">패스워드</label>
			</div>
			<input class="btn btn-lg btn-secondary btn-block" type="submit" id='log' value="로그인"/>
			<a target="_blank" id="idinquiry" href="registerForm.jsp">회원가입</a><a id="pwinquiry" href="#" onclick="popup();">아이디/비밀번호
				찾기</a>
				
		</form>
	</div>
</section>
		<%@ include file="../footer.jspf"%>
</body>
</html>