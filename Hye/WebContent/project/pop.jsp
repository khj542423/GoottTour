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
<link rel="stylesheet" href="pop.css" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
<script language="JavaScript">
	function closeWin() {
		document.all["layerPOP"].style.display = "none";
		document.all["layerPOP2"].style.display = "block";
	}

	function closeWin2() {
		document.all["layerPOP"].style.display = "block";
		document.all["layerPOP2"].style.display = "none";

	}
</script>
<script language="JavaScript">
	function CheckIt_com(form) {

		if (cm.m_name.value == "") {
			alert("이름을 입력하여 주십시오!");
			form.m_name.focus();
			return false;
		}

		if (cm.m_phone1.value == "") {
			alert("전화번호를 입력하여 주십시오!");
			form.m_phone1.focus();
			return false;
		}

		if (cm.m_phone2.value == "") {
			alert("전화번호를 입력하여 주십시오!");
			form.m_phone2.focus();
			return false;
		}

		if (cm.m_phone3.value == "") {
			alert("전화번호를 입력하여 주십시오!");
			form.m_phone3.focus();
			return false;
		}
		document.cm.submit();

	}

	function CheckIt_mem(form) {

		if (m.m_name.value == "") {
			alert("이름을 입력하여 주십시오!");
			form.m_name.focus();
			return false;
		}

		if (m.m_phone1.value == "") {
			alert("전화번호를 입력하여 주십시오!");
			form.m_phone1.focus();
			return false;
		}

		if (m.m_phone2.value == "") {
			alert("전화번호를 입력하여 주십시오!");
			form.m_phone2.focus();
			return false;
		}

		if (m.m_phone3.value == "") {
			alert("전화번호를 입력하여 주십시오!");
			form.m_phone3.focus();
			return false;
		}

		document.cm.submit();
	}
</script>
</head>

<body>
	<div>
		<div class="popidpw">
			<table class="title">
				<tr>
					<td><img src="img1/tit_idpw.png" id="pop"></td>
				</tr>
			</table>
			<div id="layerPOP">
				<form method="post" action="?c=id" name="cm">
					<table class="box_join wrap_white_shadow">
						<tr>
							<td class="m_cate" colspan="2"><input type="radio"
								name="ids" checked id="ids" value="id"> <label for="ids"
								style="cursor: pointer;">아이디찾기</label>&nbsp;&nbsp;<input
								type="radio" name="ids" id="pws" value="pw"> <label
								for="pws" style="cursor: pointer;">비밀번호찾기</label></td>
						</tr>
						<tr>
							<td colspan="2" height="15"></td>
						</tr>

						<tr>
							<td class="stit">성명(실명)</td>
							<td class="frm"><input type="text" class="ipf" name="m_name"></td>
						</tr>
						<tr>
							<td class="stit">연락처</td>
							<td class="frm"><input type="text" class="ipf2"
								name="m_phone1">-<input type="text" class="ipf2"
								name="m_phone2">-<input type="text" class="ipf2"
								name="m_phone3">
								<div>(가입시 입력한 휴대폰번호)</div></td>
						</tr>


						<tr>
							<td colspan="2" height="20"></td>
						</tr>

					</table>
					<p id="search">
						<span type="submit" class="btn btn-lg btn-secondary btn-block"
							onClick="return CheckIt_com(this.form)">검색하기</span>
					</p>
				</form>
			</div>
		</div>
	</div>
</body>

</html>