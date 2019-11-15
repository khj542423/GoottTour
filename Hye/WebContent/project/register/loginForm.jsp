<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "로그인";
	String pageSideName = "구트투어 로그인";
	String pageImage = "mainimg4.jpg";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="loginForm.css" type="text/css" />
<link rel="stylesheet" href="../headerFooterStyle.css" type="text/css" />
<link rel="stylesheet" href="main.css" type="text/css"/>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>
	function chk(){
		//아이디 8~12까지 허용 반드시 첫번째 영문자
		var reg = /^[a-zA-Z]{1}[a-zA-Z0-9]{6,14}$/;
		if(!reg.test($("#userId").val())){
			alert("아이디를 확인해주세요.");
			return false;
		} 

		//비밀번호 검사  영어, 숫자, 특수문자 ($,%,#,!)
		var pwd = document.getElementById("userPwd").value;
		
		
		//각 문자의 종류에 대한 갯수를 구한다.
		var eng = 0;// 영어
		var num = 0;// 숫자
		var spe = 0;// 특수
		for(idx=0; idx<pwd.length; idx++){
			ch = pwd.charAt(idx);
			if(ch>='A' && ch<='Z' || ch>='a' && ch<='z')
				eng++;
			if(ch>='0' && ch<='9')
				num++;
			if(ch == '$' || ch == '%' || ch == '#' || ch== '!'){
				spe++;
			}
		}
		/////////////
		if(pwd.length<8){//글자수 확인
			alert("비밀번호를 확인해주세요.");
			return false;
		}
		if(eng==0 || num == 0 || spe ==0){
			alert("비밀번호를 확인해주세요.");
			return false;// 펄스 함으로 다음 못오게
			
		}
	}

</script>

</head>
<body>
	<%@ include file="../header.jspf"%>
	<section>
		<div class="container mt-2">
			<form method="post" onsubmit="return chk()" id="form-signin" action="<%=request.getContextPath()%>/project/register/loginOk.do">
				<div class="text-center">
					<img src="<%=request.getContextPath()%>/image/key.png">
					<h1 class="h3 mb-3 font-weight-bold">로그인</h1>
				</div>
				<div class="form-group">
					<input id="userId" name="userId" class="form-control" maxlength="15" placeholder="아이디를 입력해주세요." required autofocus>				
				</div>
				<div class="form-group">
					<input type="password" id="userPwd" name="userPwd" class="form-control" maxlength="15" placeholder="비밀번호를 입력해주세요." required autofocus>				
				</div>
				<input class="btn btn-lg btn-secondary btn-block" type="submit" id="log" value="로그인" />
					<a target="_blank" id="idinquiry" href="registerForm.jsp">회원가입</a>
					<a id="pwinquiry" href="#" onclick="popup();">아이디/비밀번호 찾기</a>
			</form>
		</div>

	<script src="bootstrap-validate.js"></script>
	<script>
		bootstrapValidate('#userId','min:7:')
		bootstrapValidate('#userPwd','min:8:')
	</script>
	</section>
	<%@ include file="../footer.jspf"%>
</body>
</html>