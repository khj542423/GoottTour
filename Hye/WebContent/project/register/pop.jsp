<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style>
	* {	font-family: 'Noto Sans KR', sans-serif;}
	.login ul {	width: 600px; margin: 0 auto;}
	.login ul li {padding: 30px 0;}
	.login ul table {margin: 0px auto; width: 500px;}
	.login ul table td {font-size: 14px;}
	.login .login_input_box {height: 40px; width: 250px; font-size: 14px;padding: 0 5px; margin: 0 5px; border: 1px solid #ddd; border-radius: 3px;}
	.login p {font-size: 14px;}
	.popidpw {width: 100%; background: #f3f3f3; padding: 20px 0 10px 0; overflow: hidden;}
	.popidpw .box_join {width: 450px; height:180px; border: 1px solid #c3c3c3; margin: 10px auto;}
	.m_cate {background-color: #f3f3f3; margin-left:40px; height: 40px; color: #333; font-size: 13px; line-height: 40px; border-bottom: 1px solid lightgray;}
	.popidpw .box_join .stit {width: 70px; height: 45px; padding: auto 0 0 20px; vertical-align: top; font-size: 14px;}
	.popidpw .box_join .frm {vertical-align: top; font-size: 12px;}
	.popidpw .box_join .ipf {width: 298px; height: 40px; font-size: 16px; padding: 0 5px; margin: 0 5px; border: 1px solid #ddd; border-radius: 3px;}
	.popidpw .box_join .ipf2 {width: 80px; height: 40px; font-size: 16px; padding: 0 5px; margin: 0 5px; border: 1px solid #ddd; border-radius: 3px;}
	.popidpw .box_join .ipf3 {width: 250px; height: 40px; font-size: 16px; padding: 0 5px; margin: 0 5px; border: 1px solid #ddd; border-radius: 3px;}
	.popidpw .box_join td * {vertical-align: middle;}
	#pop {margin: auto 40px;}
	#pwst{display:none}
</style>
<script>
	$(function(){
		$("#ids").change(function(){
			if(this.checked){
				$("#pwst").css("display","none");
				$("#pwst input").val("");
				$("#idst").css("display","block");
			}
		});
		
		$("#pws").change(function(){
			if(this.checked){
				$("#idst").css("display","none");
				$("#idst input").val("");
				$("#pwst").css("display","block");
			}
		});
	});
</script>
</head>

<body>
	<div>
		<div class="popidpw">
			<table class="title">
				<tr>
					<td><img src="<%=request.getContextPath()%>/image/tit_idpw.png" id="pop"></td>
				</tr>
			</table>
			<div id="layerPOP">
				<div class="m_cate">
					<input type="radio"	name="searchChk" checked id="ids" value="id">
					<label for="ids" style="cursor: pointer;">아이디찾기</label>
					<input type="radio" name="searchChk" id="pws" value="pw">
					<label for="pws" style="cursor: pointer;">비밀번호찾기</label>
				</div>
				<form method="get" name="cm" action="<%=request.getContextPath()%>/project/register/findRegister.do">
					<table class="box_join" id="idst">
						<tr id="findIdName">
							<td class="stit">성명(실명)</td>
							<td class="frm"><input type="text" class="ipf" name="idsName" id="idsName"></td>
						</tr>
						<tr id="findIdTel">
							<td class="stit">연락처</td>
							<td class="frm">
								<input type="text" class="ipf2" name="idsT1" id="idsT1">
								-<input type="text" class="ipf2" name="idsT2" id="idsT2">
								-<input type="text" class="ipf2" name="idsT3" id="idsT3">
								<div>(가입시 입력한 휴대폰번호)</div>
							</td>
						</tr>
					</table>
					<table class="box_join" id="pwst">
						<tr id="findIdName">
							<td class="stit">아이디</td>
							<td class="frm"><input type="text" class="ipf" name="pwsId" id="pwsId"></td>
						</tr>
						<tr id="findIdName">
							<td class="stit">이름</td>
							<td class="frm"><input type="text" class="ipf" name="pwsName" id="pwsName"></td>
						</tr>
						<tr id="findIdTel">
							<td class="stit">연락처</td>
							<td class="frm">
								<input type="text" class="ipf2" name="pwsT1" id="pwsT1">
								-<input type="text" class="ipf2" name="pwsT2" id="pwsT2">
								-<input type="text" class="ipf2" name="pwsT3" id="pwsT3">
								<div>(가입시 입력한 휴대폰번호)</div>
							</td>
						</tr>
					</table>
					<input type="submit" class="btn btn-lg btn-secondary btn-block" value="검색하기"/>
				</form>
			</div>
		</div>
	</div>
</body>

</html>