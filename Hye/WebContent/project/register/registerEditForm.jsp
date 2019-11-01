<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "회원정보수정";
	String pageSideName = "구트투어 회원정보수정";
	String pageImage = "main_img_banner_8.jpg";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="registerForm.css" type="text/css" />
<link rel="stylesheet" href="../headerFooterStyle.css" type="text/css" />

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
*{font-family:'Noto Sans KR',sans-serif;}
</style>
<script>

$(function(){
	$("#regForm").submit(function(){
		
	if($("#userId").val()==""){
		alert("아이디를 입력하세요...");
		return false;
	}
	
	if($("#userId").val().length<=7){
		alert("아이디는 8~15글자 사이어야 합니다.");
		return false; 
	}
	if($("#idChkResult").val()=="N"){
		alert("아이디 중복검사를 하세요..");
		return false;
	}
	if($("#userPwd").val() ==""){
		alert("비밀번호를 입력하세요..");
		return false;
	}
	if($("#userPwd").val().length<=7){
		alert("비밀번호는 8~15글자 사이어야 합니다.");
		return false;
	}
	if($("#chkPwd").val() != ($("#userPwd").val())){ 
		alert("비밀번호가 같지 않습니다.");
		return false; 
	}
	//이름
	if($("#userName").val() ==""){
		alert("이름을 입력하세요..");
		return false;
	}
	 
	//연락처
	if( $('#t1').val()=="" || ($('#t2').val())=="" || ($('#t3').val())==""){
		alert("연락처를 입력하세요.");
		return false;
	} 
	//주소
	if( $("#zipCode").val()=="" || $("#addr").val()== "" || $("#detailAddr").val()==""){
		alert("우편주소 및 상세주소를 모두 입력해야합니다.");
		return false;
		
	}
	//이메일
	if( $("#emailId").val()=="" || ($("#emailDomain").val())==""){
		alert("이메일 및 도메인을 모두 입력해야합니다.");
		return false;
	}
	
	//약관 동의
	if($("#muni12").prop("checked") || $("#muni22").prop("checked")){
		alert("약관에 동의해주셔야합니다.");
		return false;
	}
});
	
	
	$('#idChk').click(function(){									//html은 px사용안함 javascript임
		window.open('/Hye/project/register/idCheck.do?userId='+$('#userId').val(), 'idChk', 'width=400, height=150');
		
	});
	//중복검사해제 키보드누르면 바로 Y에서 N로바뀜
	$("#userId").keyup(function(){
		$("#idChkResult").val("N");
		
	});
	

});
</script>
</head>
	<body>
	<%@ include file="../header.jspf"%>
	<section>
		<div class="H_40"></div>

		<div class='container' style="text-align:left; margin-bottom:20px">
			<img src='<%=request.getContextPath()%>/image/mo.png' id="mo"> <span
				class="tit" name="new" id="new">회원정보수정</span> <span class="tit_s">회원정보수정을
				하시면 아이디 도용방지를 할 수 있습니다.</span>
		</div>

		<div class="container">
			<div id="layerPOP2">
				<form method="post" name='m' id='regForm' action="<%=request.getContextPath()%>/project/register/registerEditOk.do">
					<input type='hidden' name='spam_chk_val' value=''>
					<table class="member">
						<tr>
							<td class="stit">아이디</td>
							<td class="frm"> ${vo.userId }
							<input type="hidden" name="idChkResult" id="idChkResult" value="N"/>
							</td>
							
						</tr>
						<tr>
							<td class="stit">비밀번호</td>
							<td class="frm"><input type="password" class="ipf"
								name='userPwd' id='userPwd' maxlength="15">
								<span id='check_pw22'></span> [영문/숫자의 조합으로 8~15자리]<input
								type="hidden" name="counter2" id="counter2"></td>
						</tr>
						<tr>
							<td class="stit">비밀번호 확인</td>
							<td class="frm"><input type="password" class="ipf"
								name='pwd2' id='chkPwd'><span
								id='check_pw2'></span></td>
						</tr>
						<tr> 
							<td class="stit">이름</td>
							<td class="frm"><input type="text" class="ipf" name='userName' value="${vo.userName }"
								id='userName'></td>
						</tr>
						<tr>
							<td class="stit" rowspan="3">주소</td>
							<td class="frm">
								<div id="wrap" style="display:none; border:1px solid; width:500px; height:300px; margin:-10px 0px 5px -10px; position:absolute">
									<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px; z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
								</div>
								<input type="text" class="ipf" name='zipCode' id='zipCode' readonly value="${vo.zipCode }" ><input type="button" class="btn btn-secondary" onclick="sample3_execDaumPostcode()" value="검색"/>
							</td>
						</tr>
						<tr>
							<td class="frm"><input type="text" class="ipf" name='addr'id='addr' value="${vo.addr }"></td>
						</tr>
						<tr>
							<td class="frm"><input type="text" class="ipf" name='detailAddr' id='detailAddr' value="${vo.detailAddr }"></td>
						</tr>
						<tr>
							<td class="stit">이메일</td>
							<td class="frm"><input type="text" class="ipf" name='emailId'
								id='emailId' value="${vo.emailId }">@<input type="text" class="ipf" id="emailDomain" value="${vo.emailDomain }"
								name='emailDomain'> </td>
						</tr>
						<tr>
							<td class="stit">연락처</td>
							<td class="frm"><input type="text" class="ipf2" name='t1'
								id='t1' maxlength="3" value="${vo.t1 }">-<input type="text" class="ipf2" id="t2"
								name='t2' maxlength="4" value="${vo.t2 }">-<input type="text" class="ipf2" id="t3"
								name='t3' maxlength="4" value="${vo.t3 }">&nbsp;&nbsp;연락가능한 휴대폰번호를 입력하세요</td>
						</tr>
						<tr>
							<td><input type="hidden" id="memType" name="memType" value="일반"></td>
						</tr>
					</table>
					<input class="btn btn-lg btn-secondary" type="submit" id="btn" value="수정하기">
				</form>
			</div>
		</div>
		<script>
		   	 // 우편번호 찾기 찾기 화면을 넣을 element
		       var element_wrap = document.getElementById('wrap');
		
		       function foldDaumPostcode() {
		           // iframe을 넣은 element를 안보이게 한다.
		           element_wrap.style.display = 'none';
		       }
		
		       function sample3_execDaumPostcode() {
		           // 현재 scroll 위치를 저장해놓는다.
		           var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
		           new daum.Postcode({
		               oncomplete: function(data) {
		                   // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		                   // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                   // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                   var addr = ''; // 주소 변수
		                   var extraAddr = ''; // 참고항목 변수
		
		                   //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                   if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                       addr = data.roadAddress;
		                   } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                       addr = data.jibunAddress;
		                   }
		                   // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                   document.getElementById('zipCode').value = data.zonecode;
		                   document.getElementById("addr").value = addr;
		                   // 커서를 상세주소 필드로 이동한다.
		                   document.getElementById("detailAddr").focus();
		
		                   // iframe을 넣은 element를 안보이게 한다.
		                   // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
		                   element_wrap.style.display = 'none';
		
		                   // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
		                   document.body.scrollTop = currentScroll;
		               },
		               // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
		               onresize : function(size) {
		                   element_wrap.style.height = size.height+'px';
		               },
		               width : '100%',
		               height : '100%'
		           }).embed(element_wrap);
		
		           // iframe을 넣은 element를 보이게 한다.
		           element_wrap.style.display = 'block';
		       }
		</script>
	</section>
	<%@ include file="../footer.jspf"%>
</body>
</html>