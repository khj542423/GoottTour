<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "회원가입";
	String pageSideName = "구트투어 회원가입";
%>
<!DOCTYPE html>
<html>
<<<<<<< HEAD

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
<link rel="stylesheet" href="new.css" type="text/css" />
<link rel="stylesheet" href="headerFooterStyle.css" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
*{font-family:'Noto Sans KR',sans-serif;}
</style>
<script>
	function CheckIt_com(form) {

		if (id.value == "") {
			alert("아이디를 입력하여 주십시오!");
			id.focus();
			return false;
		}

		if (pwd.value == "") {
			alert("비밀번호를 입력하여 주십시오!");
			pwd.focus();
			return false;
		}

		document.submit();

	}

	function CheckIt_mem(form) {

		if (id.value == "") {
			alert("아이디를 입력하여 주십시오!");
			id.focus();
			return false;
		}

		if (pwd.value == "") {
			alert("비밀번호를 입력하여 주십시오!");
			pwd.focus();
			return false;
		}

		document.submit();
	}
	
	$(function(){
		var sectionHeight = $("section").height();
		var sideBarHeight = $("#sideBar").height();
		
		if(sideBarHeight>=sectionHeight){
			$("section").height("750px")};
		
		
	});
</script>
</head>
	<body>
	<%@ include file="header.jspf"%>
	<section>
		<div class="H_40"></div>

		<div class='container' style="text-align:left; margin-bottom:20px">
			<img src='img1/mo.png' id="mo"> <span
				class="tit" name="new" id="new">회원가입</span> <span class="tit_s">회원가입을
				하시면 더 많은 혜택을 받으실 수 있습니다.</span>
		</div>

		<div class="container">
			<div id="layerPOP2">
				<form method="get" name='m' id='loginFrm' action="../index.html">
					<input type='hidden' name='spam_chk_val' value=''>
					<table class="member">
						<tr>
							<td class="stit">아이디</td>
							<td class="frm"><input type="text" class="ipf" name='id'
								id='id' onKeyUp="checkLength2();fLoadData_amt2();" maxlength=10><input
								type="hidden" name="counter" id="counter"> <span
								id='check_text2'></span> [영문/숫자의 조합으로 4~10자리]</td>
						</tr>
						<tr>
							<td class="stit">비밀번호</td>
							<td class="frm"><input type="password" class="ipf"
								name='pwd' id='pwd'
								onKeyUp="checkLengthp2();fLoadData_pw22(); checkLength2();fLoadData_amt2();">
								<span id='check_pw22'></span> [영문/숫자의 조합으로 4~10자리]<input
								type="hidden" name="counter2" id="counter2"></td>
						</tr>
						<tr>
							<td class="stit">비밀번호 확인</td>
							<td class="frm"><input type="password" class="ipf"
								name='pwd2' id='pwd2' onKeyUp="fLoadData_pw2();"><span
								id='check_pw2'></span></td>
						</tr>
						<tr>
							<td class="stit">성명(실명)</td>
							<td class="frm"><input type="text" class="ipf" name='name'
								id='name' onKeyUp="document.m.spam_chk_val.value='yes'"
								onclick="document.m.spam_chk_val.value='yes'"></td>
						</tr>
						<tr>
							<td class="stit" rowspan="3">주소</td>
							<td class="frm"><input type="text" class="ipf" name='zipcode' id='zipcode'></td>
						</tr>
						<tr>
							<td class="frm"><input type="text" class="ipf" name='addr'id='addr'></td>
						</tr>
						<tr>
							<td class="frm"><input type="text" class="ipf" name='detailAddr' id='detailAddr'></td>
						</tr>
						<tr>
							<td class="stit">이메일</td>
							<td class="frm"><input type="text" class="ipf" name='email'
								id='email'>@<input type="text" class="ipf"
								name='m_email2'> 입력하신 메일주소로 견적서 및 계약서가 발송됩니다.</td>
						</tr>
						<tr>
							<td class="stit">연락처</td>
							<td class="frm"><input type="text" class="ipf2" name='tel'
								id='tel'>-<input type="text" class="ipf2"
								name='m_phone2'>-<input type="text" class="ipf2"
								name='m_phone3'>&nbsp;&nbsp;연락가능한 휴대폰번호를 입력하세요</td>
						</tr>

						<tr>
							<td class="stit" colspan="2"><b>서비스 이용약관</b></td>
						</tr>
						<tr>
							<td class="frm2" colspan="2">
								<div id="txt">

									● 제 1조 (목적)<br /> 이 약관은 구트투어가 운영하는 구트투어 인터넷여행사(이하 "몰"이라 한다)에서
									제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리 의무 및
									책임사항을 규정함을 목적으로 합니다.<br /> <br /> ● 제 2조(정의)<br /> ① "몰" 이란
									구트투어가 제주여행상품(이하 "상품등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신 설비를 이용하여
									상품등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도
									사용합니다.<br /> ② "이용자"란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원
									및 비회원을 말합니다.<br /> ③ "회원"이라 함은 "몰"에 개인정보를 제공하여 회원등록을 한 자로서,
									"몰"의 정보를 지속적으로 제공받으며, "몰"이 제공 하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.<br />
									④ "비회원"이라 함은 회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를 말합니다.<br /> <br />
									● 제 3조 (약관등의 명시와 설명 및 개정)<br /> ① "몰"은 이 약관의 내용과 상호 및 대표자 성명,
									영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호,팩스번호,전자우편주소,
									사업자등록번호, 통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 몰의 초기
									서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼수 있도록 할 수 있습니다.<br />
									② "몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회,배송책임,환불조건 등과 같은
									중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야
									합니다.<br /> ③ "몰"은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법,
									전자서명법, 정보통신망 이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서
									이 약관을 개정할 수 있습니다.<br /> ④ "몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여
									현행약관과 함께 몰의 초기화면에 그 적용일자7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게
									약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰"은 개정전
									내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br /> ⑤ "몰"이 약관을 개정할
									경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는
									개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는
									뜻을 제3항에 의한 개정약관의 공지기간내에 "몰"에 송신하여 "몰"의 동의를 받은 경우에는 개정약관조항이
									적용됩니다.<br /> ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는
									전자상거래등에서의소비자보호에관한법률, 약관의 규제등에관한법률, 공정거래위원회가 정하는
									전자상거래등에서의소비자보호지침 및 관계법령 또는 상관례에 따릅니다.<br /> <br /> ● 제
									4조(서비스의 제공 및 변경)<br /> ① "몰"은 다음과 같은 업무를 수행합니다.<br /> 1. 재화
									또는 용역에 대한 정보 제공 및 구매계약의 체결<br /> 2. 구매계약이 체결된 재화 또는 용역의 배송<br />
									3. 기타 "몰"이 정하는 업무<br /> ② "몰"은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의
									경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화
									또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.<br />
									③ "몰"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 상품등의 품절 또는 기술적 사양의 변경 등의 사유로
									변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.<br /> ④ 전항의 경우 "몰"은
									이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "몰"이 고의 또는 과실이 없음을입증하는 경우에는 그러하지
									아니합니다.<br /> <br /> ● 제 5조(서비스의 중단)<br /> ① "몰"은 컴퓨터 등
									정보통신설비의 보수점검,교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할
									수 있습니다.<br /> ② "몰"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는
									제3자가 입은 손해에 대하여 배상합니다. 단, "몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지
									아니합니다.<br /> ③ 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게
									되는 경우에는 "몰"은 제8조에 정한 방법으로 이용자에게 통지하고 당초 "몰"에서 제시한 조건에 따라 소비자에게
									보상합니다.<br /> <br /> ● 제 6조(회원가입)<br /> ① 이용자는 "몰"이 정한 가입 양식에
									따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서회원가입을 신청합니다.<br /> ② "몰"은
									제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다.<br />
									1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에
									의한 회원자격 상실후 3년이 경과한 자로서 "몰"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.<br />
									2. 등록 내용에 허위, 기재누락, 오기가 있는 경우<br /> 3. 기타 회원으로 등록하는 것이 "몰"의
									기술상 현저히 지장이 있다고 판단되는 경우<br /> ③ 회원가입계약의 성립시기는 "몰"의 승낙이 회원에게
									도달한 시점으로 합니다.<br /> ④ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편
									기타 방법으로 "몰"에 대하여 그 변경사항을 알려야 합니다.<br /> <br /> ● 제7조(회원 탈퇴 및
									자격 상실 등)<br /> ① 회원은 "몰"에 언제든지 탈퇴를 고객센터에 전화하여 요청할 수 있으며 "몰"은
									즉시 회원탈퇴를 처리합니다.<br /> ② 회원이 다음 각호의 사유에 해당하는 경우, "몰"은 회원자격을 제한
									및 정지시킬 수 있습니다.<br /> 1. 가입 신청시에 허위 내용을 등록한 경우<br /> 2. "몰"을
									이용하여 구입한 상품등의 대금, 기타 "몰"이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우<br />
									3. 다른 사람의 "몰" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br />
									4. "몰"을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br /> ③
									"몰"이 회원 자격을 제한,정지 시킨후, 동일한 행위가 2회이상 반복되거나 30일이내에 그 사유가 시정되지
									아니하는 경우 "몰"은 회원자격을 상실시킬 수 있습니다.<br /> ④ "몰"이 회원자격을 상실시키는 경우에는
									회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 마소전에 최소한 30일 이상의 기간을 정하여
									소명할 기회를 부여합니다.<br /> <br /> ● 제 8조(휴면 아이디에 대한 관리)<br /> ①
									"몰"은 이용자가 5년간 이용기록이 없는 경우 휴면아이디로 간주하여 서비스 이용정지를 하게 됩니다.<br />
									② "몰"은 휴면아이디로 처리시 이용자에게 이메일을 통하여 상기 사실에 대해 통지하게 됩니다.<br /> ③
									"몰"은 휴면중인 이용자가 로그인을 하는 경우, 본인확인 절차 후 재사용이 가능하도록 합니다<br /> <br />
									● 제 9조(회원에 대한 통지)<br /> ① "몰"이 회원에 대한 통지를 하는 경우, 회원이 "몰"과 미리
									약정하여 지정한 전자우편 주소로 할 수 있습니다.<br /> ② "몰"은 불특정다수 회원에 대한 통지의 경우
									1주일이상 "몰" 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여
									중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.<br /> <br /> ● 제 10조(구매신청)<br />
									"몰"이용자는 "몰"상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, "몰"은 이용자가 구매신청을
									함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. 단, 회원인 경우 제2호 내지 제4호의 적용을 제외할
									수 있습니다.<br /> 1. 상품등의 검색 및 선택<br /> 2. 성명, 주소, 전화번호,
									전자우편주소(또는 이동전화번호) 등의 입력<br /> 3. 각 상품별 약관내용, 청약철회권이 제한되는 서비스,
									배송료,설치비 등의 비용부담과 관련한 내용에 대한 확인<br /> 4. 이 약관에 동의하고 위 3.호의 사항을
									확인하거나 거부하는 표시(예, 마우스 클릭)<br /> 5. 상품등의 구매신청 및 이에 관한 확인 또는 "몰"의
									확인에 대한 동의<br /> 6. 결제방법의 선택<br /> <br /> ● 제 11조 (계약의 성립)<br />
									① "몰"은 제9조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와
									계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는
									내용을 고지하여야 합니다.<br /> 1. 신청 내용에 허위, 기재누락, 오기가 있는 경우<br /> 2.
									미성년자가 담배, 주류등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우<br /> 3. 기타 구매신청에
									승낙하는 것이 "몰" 기술상 현저히 지장이 있다고 판단하는 경우<br /> ② "몰"의 승낙이 제12조제1항의
									수신확인통지형태로 이용자에게 도달한후 계약금이 입금된 시점에 계약이 성립한 것으로 봅니다.<br /> ③
									"몰"의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소등에 관한
									정보등을 포함하여야 합니다.<br /> <br /> ● 제 12조(지급방법)<br /> "몰"에서 구매한
									재화 또는 용역에 대한 대금지급방법은 다음 각호의 방법중 가용한 방법으로 할 수 있습니다. 단, "몰"은 이용자의
									지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.<br /> 1.
									온라인무통장입금<br /> 2. 당사 내사방문후 대금지급<br /> <br /> ● 제
									13조(수신확인통지,구매신청 변경 및 취소)<br /> ① "몰"은 이용자의 구매신청이 있는 경우 이용자에게
									수신확인통지를 합니다.<br /> ② 수신확인통지를 받은 이용자는 의사표시의 불일치등이 있는 경우에는
									수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 "몰"은 배송전에 이용자의 요청이 있는
									경우에는 지체없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에
									관한 규정에 따릅니다.<br /> <br /> ● 제 14조(상품등의 공급)<br /> ① "몰"은 이용자와
									상품등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화둥을 배송할 수
									있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, "몰"이 이미 재화 등의 대금의 전부 또는일부를
									받은 경우에는 대금의 전부 또는 일부를 받은 날부터 2영업일 이내에 조치를 취합니다. 이때 "몰"은 이용자가
									상품등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다. 다만, 여행상품과 같은 무형의 재화
									공급은해당 상품에 적용되는 별도의 약관교부하고 차질없이 출발할 수 있도록 일련이 조치를 하여야 합니다.<br />
									② "몰"은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다.만약
									"몰"이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 "몰"이 고의,과실이
									없음을 입증한 경우에는 그러하지 아니합니다. 단,여행상품과 같은 무형의 재화 공급은 예약한 상품에 대한 별도의
									여행자 계약서등을 교부하여 이용자가 상기 상품에 대해 이용할 수 있도록 하여야 합니다.<br /> <br />
									● 제 15조 (환급)<br /> "몰"은 이용자가 구매신청한 상품등이 품절 등의 사유로 인도 또는 제공을 할
									수 없을 때에는 지체없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터
									2영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다. 단, 여행상품의 경우 상품의 특성상 이용자가 출발일전
									모든 예약이 완료된 이후 계약을 해지할 경우 국내(외) 여행표준약관 및 국내(외) 소비자 피해보상규정에 의거 손해
									배상액을 공제하고 환불 하며, 기타 상품의 상품이용 계약체결시 계약한 특별약관등의 규정에 의거한 상품의 취소 및
									환불 수수료를 공제하고 환불해 드립니다.<br /> <br /> ● 제 16조 (청약철회 등)<br /> ①
									"몰"과 상품등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날부터 7일 이내에는 청약의 철회를
									할수 있습니다. 단, 여행상품의 경우 국외,국내여행 표준약관에 의한 환급기준에 따라 별도의 취소수수료가 부가될 수
									있습니다.<br /> ② 이용자는 상품등을 배송받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할
									수 없습니다.<br /> 1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의
									내용을 확인하기 위하여 포장<br /> 등을 훼손한 경우에는 청약철회를 할 수 있습니다)<br /> 2.
									이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br /> 3. 시간의 경과에
									의하여 재판매가 곤란할 정도로 상품등의 가치가 현저히 감소한 경우<br /> 4. 같은 성능을 지닌 상품등으로
									복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br /> ③ 제2항제2호 내지 제4호의 경우에
									"몰"이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의
									조치를 하지 않았다면 이용자의 청약철회등이 제한되지 않습니다.<br /> ④ 이용자는 제1항 및 제2항의 규정에
									불구하고 상품등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 상품등을 공급받은 날부터
									3월이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.<br />
									<br /> ● 제 17조(청약철회 등의 효과)<br /> ① "몰"은 이용자로부터 재화 등을 반환받은 경우
									3영업일 이내에 이미 지급받은 상품등의 대금을 환급합니다. 이 경우 "몰"이 이용자에게 상품등의 환급을 지연한
									때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연 이자율을 곱하여 산정한 지연이자를 지급합니다.<br />
									② "몰"은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 상품등의 대금을 지급한
									때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 상품등의 대금의 청구를 정지 또는 취소하도록 요청합니다.<br />
									③ 청약철회등의 경우 공급받은 상품등의 반환에 필요한 비용은 이용자가 부담합니다. "몰"은 이용자에게 청약철회등을
									이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 상품등의 내용이 표시·광고 내용과 다르거나 계약내용과
									다르게 이행되어 청약철회등을 하는 경우 상품등의 반환에 필요한 비용은 "몰"이 부담합니다.<br /> ④
									이용자가 상품등을 제공받을때 발송비를 부담한 경우에 "몰"은 청약철회시 그 비용을 누가 부담하는지를 이용자가 알기
									쉽도록 명확하게 표시합니다.<br /> <br /> ● 제 18조(개인정보보호)<br /> 개인정보보호에
									관한 사항에 몰에 게시된 당사의 개인정보취급방침에 규정된 내용에 따릅니다.<br /> <br /> ● 제
									19조("몰"의 의무)<br /> ① "몰"은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며
									이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화,용역을 제공하는데 최선을 다하여야 합니다.<br />
									② "몰"은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안
									시스템을 갖추어야 합니다.<br /> ③ "몰"이 상품이나 용역에 대하여 「표시,광고의공정화에관한법률」 제3조
									소정의 부당한 표시 광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br /> ④
									"몰"은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.<br /> <br /> ● 제
									20조(회원의 ID 및 비밀번호에 대한 의무)<br /> ① 제17조의 경우를 제외한 ID와 비밀번호에 관한
									관리책임은 회원에게 있습니다.<br /> ② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는
									안됩니다.<br /> ③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는
									바로 "몰"에 통보하고 "몰"의 안내가 있는 경우에는 그에 따라야 합니다.<br /> <br /> ● 제
									21조(이용자의 의무)<br /> 이용자는 다음 행위를 하여서는 안됩니다.<br /> 1. 신청 또는 변경시
									허위 내용의 등록<br /> 2. 타인의 정보 도용<br /> 3. "몰"에 게시된 정보의 변경<br />
									4. "몰"이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br /> 5. "몰" 기타
									제3자의 저작권 등 지적재산권에 대한 침해<br /> 6. "몰" 기타 제3자의 명예를 손상시키거나 업무를
									방해하는 행위<br /> 7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에
									공개 또는 게시하는 행위<br /> <br /> ● 제 22조(연결"몰"과 피연결"몰" 간의 관계)<br />
									① 상위 "몰"과 하위 "몰"이 하이퍼 링크(예: 하이퍼 링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식
									등으로 연결된 경우, 전자를 연결 "몰"(웹 사이트)이라고 하고 후자를 피연결 "몰"(웹사이트)이라고 합니다.<br />
									② 연결"몰"은 피연결"몰"이 독자적으로 제공하는 상품등에 의하여 이용자와 행하는 거래에 대해서 보증책임을 지지
									안는다 는 뜻을 연결"몰"의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증책임을
									지지 않습니다.<br /> <br /> ● 제23조(저작권의 귀속 및 이용제한)<br /> ① "몰"이
									작성한 저작물에 대한 저작권 기타 지적재산권은 "몰"에 귀속합니다.<br /> ② 이용자는 "몰"을 이용함으로써
									얻은 정보 중 "몰"에게 지적재산권이 귀속된 정보를 "몰"의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타
									방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.<br /> ③ "몰"은 약정에 따라
									이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.<br /> ④ "몰"과 상품구매및
									서비스이용 계약을 체결하지 않고 이용자가 "몰"에 게시된 정보를 사용으로 인한 피해에 대한 책임은 전적으로
									이용자에게 있습니다.<br /> <br /> ● 제24조(분쟁해결)<br /> ① "몰"은 이용자가 제기하는
									정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치운영합니다.<br /> ②
									"몰"은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한
									경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br /> ③ "몰"과 이용자간에 발생한
									전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는
									분쟁조정기관의 조정에 따를 수 있습니다.<br /> <br /> ● 제25조(재판권 및 준거법)<br />
									① "몰"과 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는
									경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지
									않거나 외국거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br /> ② "몰"과 이용자간에 제기된
									전자상거래 소송에는 한국법을 적용합니다.<br /> <br /> ● 제26조(특별규정)<br /> ① 당
									약관에 명시되지 않은 사항은 전자거래기본법, 전자서명법,전자상거래등에서의 소비자보호에 관한 법률 기타 관련법령의
									규정 및 국내외 여행표준약관등에 의합니다.<br /> <br /> ● 부 칙<br /> 본 약관은 2008년
									6월 1일 부터 시행됩니다<br />
								</div> <br> <input type="radio" name="muni"> <span>이용약관에
									동의합니다.</span><input type="radio" name="muni" checked> <span>이용약관에
									동의하지 않습니다.</span><br> <br>
							</td>
						</tr>
						<tr>
							<td class="stit" colspan="2"><b>개인정보 수집동의절차</b></td>
						</tr>
						<tr>
							<td class="frm2" colspan="2">
								<div id="txt2">

									[ 개인정보 수집, 이용에 관한사항 ]<br /> <br /> 회사는 회원제 서비스 제공을 위해 귀하의
									개인정보를 아래와 같이 수집하고자 합니다.&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />
									&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br /> 1.
									수집하는개인정보항목 : 이름,아이디,비밀번호,생년월일,휴대폰번호,이메일&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;<br /> &nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;<br /> 2.수집및이용목적 : 회원제 가입 서비스제공,
									계약이행을 위한 연락, 민원 및 고충처리&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />
									&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br /> 3. 보유및 이용기간
									: 회원탈퇴 후 5일까지&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />
									&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br /> ※서비스 제공을 위해
									필요한 최소한의 개인정보이므로 동의를 해 주셔야 서비스를 이용하실 수 있습니다.&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;<br /> &nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;<br /> 개인정보의 수집,이용에 관한 사항에
									동의하십니까?&nbsp;&nbsp; &nbsp;
								</div> <br> <input type="radio" name="muni2"> <span>개인정보
									수집에 동의합니다.</span><input type="radio" name="muni2" checked> <span>개인정보
									수집에 동의하지 않습니다</span><br> <br>
							</td>
						</tr>
					</table>
					<button class="btn btn-lg btn-secondary" type="submit" id="btn"
						onClick="return CheckIt_com(this.form)">가입하기</button>
				</form>
			</div>
		</div>
	</section>
	<%@ include file="footer.jspf"%>
</body>

=======
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
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="new.css" type="text/css" />
<link rel="stylesheet" href="headerFooterStyle.css" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
*{font-family:'Noto Sans KR',sans-serif;}
</style>
<script>
	function CheckIt_com(form) {

		if (id.value == "") {
			alert("아이디를 입력하여 주십시오!");
			id.focus();
			return false;
		}

		if (pwd.value == "") {
			alert("비밀번호를 입력하여 주십시오!");
			pwd.focus();
			return false;
		}

		document.submit();

	}

	function CheckIt_mem(form) {

		if (id.value == "") {
			alert("아이디를 입력하여 주십시오!");
			id.focus();
			return false;
		}

		if (pwd.value == "") {
			alert("비밀번호를 입력하여 주십시오!");
			pwd.focus();
			return false;
		}

		document.submit();
	}
	
</script>
</head>
	<body>
	<%@ include file="header.jspf"%>
	<section>
		<div class="H_40"></div>

		<div class='container' style="text-align:left; margin-bottom:20px">
			<img src='img1/mo.png' id="mo"> <span
				class="tit" name="new" id="new">회원가입</span> <span class="tit_s">회원가입을
				하시면 더 많은 혜택을 받으실 수 있습니다.</span>
		</div>

		<div class="container">
			<div id="layerPOP2">
				<form method="get" name='m' id='loginFrm' action="../index.jsp">
					<input type='hidden' name='spam_chk_val' value=''>
					<table class="member">
						<tr>
							<td class="stit">아이디</td>
							<td class="frm"><input type="text" class="ipf" name='id'
								id='id' onKeyUp="checkLength2();fLoadData_amt2();" maxlength=10><input
								type="hidden" name="counter" id="counter"> <span
								id='check_text2'></span> [영문/숫자의 조합으로 4~10자리]</td>
						</tr>
						<tr>
							<td class="stit">비밀번호</td>
							<td class="frm"><input type="password" class="ipf"
								name='pwd' id='pwd'
								onKeyUp="checkLengthp2();fLoadData_pw22(); checkLength2();fLoadData_amt2();">
								<span id='check_pw22'></span> [영문/숫자의 조합으로 4~10자리]<input
								type="hidden" name="counter2" id="counter2"></td>
						</tr>
						<tr>
							<td class="stit">비밀번호 확인</td>
							<td class="frm"><input type="password" class="ipf"
								name='pwd2' id='pwd2' onKeyUp="fLoadData_pw2();"><span
								id='check_pw2'></span></td>
						</tr>
						<tr>
							<td class="stit">성명(실명)</td>
							<td class="frm"><input type="text" class="ipf" name='name'
								id='name' onKeyUp="document.m.spam_chk_val.value='yes'"
								onclick="document.m.spam_chk_val.value='yes'"></td>
						</tr>
						<tr>
							<td class="stit" rowspan="3">주소</td>
							<td class="frm">
								<div id="wrap" style="display:none;border:1px solid; width:500px; height:300px; margin:-10px 0px 5px -10px;position:absolute">
									<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
								</div>
								<input type="text" class="ipf" name='zipcode' id='zipcode'><input type="button" class="btn btn-secondary" onclick="sample3_execDaumPostcode()" value="검색"/>
							</td>
						</tr>
						<tr>
							<td class="frm"><input type="text" class="ipf" name='addr'id='addr'></td>
						</tr>
						<tr>
							<td class="frm"><input type="text" class="ipf" name='detailAddr' id='detailAddr'></td>
						</tr>
						<tr>
							<td class="stit">이메일</td>
							<td class="frm"><input type="text" class="ipf" name='email'
								id='email'>@<input type="text" class="ipf"
								name='m_email2'> 입력하신 메일주소로 견적서 및 계약서가 발송됩니다.</td>
						</tr>
						<tr>
							<td class="stit">연락처</td>
							<td class="frm"><input type="text" class="ipf2" name='tel'
								id='tel' maxlength="3">-<input type="text" class="ipf2"
								name='m_phone2' maxlength="4">-<input type="text" class="ipf2"
								name='m_phone3' maxlength="4">&nbsp;&nbsp;연락가능한 휴대폰번호를 입력하세요</td>
						</tr>

						<tr>
							<td class="stit" colspan="2"><b>서비스 이용약관</b></td>
						</tr>
						<tr>
							<td class="frm2" colspan="2">
								<div id="txt">

									● 제 1조 (목적)<br /> 이 약관은 구트투어가 운영하는 구트투어 인터넷여행사(이하 "몰"이라 한다)에서
									제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리 의무 및
									책임사항을 규정함을 목적으로 합니다.<br /> <br /> ● 제 2조(정의)<br /> ① "몰" 이란
									구트투어가 제주여행상품(이하 "상품등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신 설비를 이용하여
									상품등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도
									사용합니다.<br /> ② "이용자"란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원
									및 비회원을 말합니다.<br /> ③ "회원"이라 함은 "몰"에 개인정보를 제공하여 회원등록을 한 자로서,
									"몰"의 정보를 지속적으로 제공받으며, "몰"이 제공 하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.<br />
									④ "비회원"이라 함은 회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를 말합니다.<br /> <br />
									● 제 3조 (약관등의 명시와 설명 및 개정)<br /> ① "몰"은 이 약관의 내용과 상호 및 대표자 성명,
									영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호,팩스번호,전자우편주소,
									사업자등록번호, 통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 몰의 초기
									서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼수 있도록 할 수 있습니다.<br />
									② "몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회,배송책임,환불조건 등과 같은
									중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야
									합니다.<br /> ③ "몰"은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법,
									전자서명법, 정보통신망 이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서
									이 약관을 개정할 수 있습니다.<br /> ④ "몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여
									현행약관과 함께 몰의 초기화면에 그 적용일자7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게
									약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰"은 개정전
									내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br /> ⑤ "몰"이 약관을 개정할
									경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는
									개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는
									뜻을 제3항에 의한 개정약관의 공지기간내에 "몰"에 송신하여 "몰"의 동의를 받은 경우에는 개정약관조항이
									적용됩니다.<br /> ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는
									전자상거래등에서의소비자보호에관한법률, 약관의 규제등에관한법률, 공정거래위원회가 정하는
									전자상거래등에서의소비자보호지침 및 관계법령 또는 상관례에 따릅니다.<br /> <br /> ● 제
									4조(서비스의 제공 및 변경)<br /> ① "몰"은 다음과 같은 업무를 수행합니다.<br /> 1. 재화
									또는 용역에 대한 정보 제공 및 구매계약의 체결<br /> 2. 구매계약이 체결된 재화 또는 용역의 배송<br />
									3. 기타 "몰"이 정하는 업무<br /> ② "몰"은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의
									경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화
									또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.<br />
									③ "몰"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 상품등의 품절 또는 기술적 사양의 변경 등의 사유로
									변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.<br /> ④ 전항의 경우 "몰"은
									이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "몰"이 고의 또는 과실이 없음을입증하는 경우에는 그러하지
									아니합니다.<br /> <br /> ● 제 5조(서비스의 중단)<br /> ① "몰"은 컴퓨터 등
									정보통신설비의 보수점검,교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할
									수 있습니다.<br /> ② "몰"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는
									제3자가 입은 손해에 대하여 배상합니다. 단, "몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지
									아니합니다.<br /> ③ 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게
									되는 경우에는 "몰"은 제8조에 정한 방법으로 이용자에게 통지하고 당초 "몰"에서 제시한 조건에 따라 소비자에게
									보상합니다.<br /> <br /> ● 제 6조(회원가입)<br /> ① 이용자는 "몰"이 정한 가입 양식에
									따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서회원가입을 신청합니다.<br /> ② "몰"은
									제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다.<br />
									1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에
									의한 회원자격 상실후 3년이 경과한 자로서 "몰"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.<br />
									2. 등록 내용에 허위, 기재누락, 오기가 있는 경우<br /> 3. 기타 회원으로 등록하는 것이 "몰"의
									기술상 현저히 지장이 있다고 판단되는 경우<br /> ③ 회원가입계약의 성립시기는 "몰"의 승낙이 회원에게
									도달한 시점으로 합니다.<br /> ④ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편
									기타 방법으로 "몰"에 대하여 그 변경사항을 알려야 합니다.<br /> <br /> ● 제7조(회원 탈퇴 및
									자격 상실 등)<br /> ① 회원은 "몰"에 언제든지 탈퇴를 고객센터에 전화하여 요청할 수 있으며 "몰"은
									즉시 회원탈퇴를 처리합니다.<br /> ② 회원이 다음 각호의 사유에 해당하는 경우, "몰"은 회원자격을 제한
									및 정지시킬 수 있습니다.<br /> 1. 가입 신청시에 허위 내용을 등록한 경우<br /> 2. "몰"을
									이용하여 구입한 상품등의 대금, 기타 "몰"이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우<br />
									3. 다른 사람의 "몰" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br />
									4. "몰"을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br /> ③
									"몰"이 회원 자격을 제한,정지 시킨후, 동일한 행위가 2회이상 반복되거나 30일이내에 그 사유가 시정되지
									아니하는 경우 "몰"은 회원자격을 상실시킬 수 있습니다.<br /> ④ "몰"이 회원자격을 상실시키는 경우에는
									회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 마소전에 최소한 30일 이상의 기간을 정하여
									소명할 기회를 부여합니다.<br /> <br /> ● 제 8조(휴면 아이디에 대한 관리)<br /> ①
									"몰"은 이용자가 5년간 이용기록이 없는 경우 휴면아이디로 간주하여 서비스 이용정지를 하게 됩니다.<br />
									② "몰"은 휴면아이디로 처리시 이용자에게 이메일을 통하여 상기 사실에 대해 통지하게 됩니다.<br /> ③
									"몰"은 휴면중인 이용자가 로그인을 하는 경우, 본인확인 절차 후 재사용이 가능하도록 합니다<br /> <br />
									● 제 9조(회원에 대한 통지)<br /> ① "몰"이 회원에 대한 통지를 하는 경우, 회원이 "몰"과 미리
									약정하여 지정한 전자우편 주소로 할 수 있습니다.<br /> ② "몰"은 불특정다수 회원에 대한 통지의 경우
									1주일이상 "몰" 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여
									중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.<br /> <br /> ● 제 10조(구매신청)<br />
									"몰"이용자는 "몰"상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, "몰"은 이용자가 구매신청을
									함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. 단, 회원인 경우 제2호 내지 제4호의 적용을 제외할
									수 있습니다.<br /> 1. 상품등의 검색 및 선택<br /> 2. 성명, 주소, 전화번호,
									전자우편주소(또는 이동전화번호) 등의 입력<br /> 3. 각 상품별 약관내용, 청약철회권이 제한되는 서비스,
									배송료,설치비 등의 비용부담과 관련한 내용에 대한 확인<br /> 4. 이 약관에 동의하고 위 3.호의 사항을
									확인하거나 거부하는 표시(예, 마우스 클릭)<br /> 5. 상품등의 구매신청 및 이에 관한 확인 또는 "몰"의
									확인에 대한 동의<br /> 6. 결제방법의 선택<br /> <br /> ● 제 11조 (계약의 성립)<br />
									① "몰"은 제9조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와
									계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는
									내용을 고지하여야 합니다.<br /> 1. 신청 내용에 허위, 기재누락, 오기가 있는 경우<br /> 2.
									미성년자가 담배, 주류등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우<br /> 3. 기타 구매신청에
									승낙하는 것이 "몰" 기술상 현저히 지장이 있다고 판단하는 경우<br /> ② "몰"의 승낙이 제12조제1항의
									수신확인통지형태로 이용자에게 도달한후 계약금이 입금된 시점에 계약이 성립한 것으로 봅니다.<br /> ③
									"몰"의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소등에 관한
									정보등을 포함하여야 합니다.<br /> <br /> ● 제 12조(지급방법)<br /> "몰"에서 구매한
									재화 또는 용역에 대한 대금지급방법은 다음 각호의 방법중 가용한 방법으로 할 수 있습니다. 단, "몰"은 이용자의
									지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.<br /> 1.
									온라인무통장입금<br /> 2. 당사 내사방문후 대금지급<br /> <br /> ● 제
									13조(수신확인통지,구매신청 변경 및 취소)<br /> ① "몰"은 이용자의 구매신청이 있는 경우 이용자에게
									수신확인통지를 합니다.<br /> ② 수신확인통지를 받은 이용자는 의사표시의 불일치등이 있는 경우에는
									수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 "몰"은 배송전에 이용자의 요청이 있는
									경우에는 지체없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에
									관한 규정에 따릅니다.<br /> <br /> ● 제 14조(상품등의 공급)<br /> ① "몰"은 이용자와
									상품등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화둥을 배송할 수
									있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, "몰"이 이미 재화 등의 대금의 전부 또는일부를
									받은 경우에는 대금의 전부 또는 일부를 받은 날부터 2영업일 이내에 조치를 취합니다. 이때 "몰"은 이용자가
									상품등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다. 다만, 여행상품과 같은 무형의 재화
									공급은해당 상품에 적용되는 별도의 약관교부하고 차질없이 출발할 수 있도록 일련이 조치를 하여야 합니다.<br />
									② "몰"은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다.만약
									"몰"이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 "몰"이 고의,과실이
									없음을 입증한 경우에는 그러하지 아니합니다. 단,여행상품과 같은 무형의 재화 공급은 예약한 상품에 대한 별도의
									여행자 계약서등을 교부하여 이용자가 상기 상품에 대해 이용할 수 있도록 하여야 합니다.<br /> <br />
									● 제 15조 (환급)<br /> "몰"은 이용자가 구매신청한 상품등이 품절 등의 사유로 인도 또는 제공을 할
									수 없을 때에는 지체없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터
									2영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다. 단, 여행상품의 경우 상품의 특성상 이용자가 출발일전
									모든 예약이 완료된 이후 계약을 해지할 경우 국내(외) 여행표준약관 및 국내(외) 소비자 피해보상규정에 의거 손해
									배상액을 공제하고 환불 하며, 기타 상품의 상품이용 계약체결시 계약한 특별약관등의 규정에 의거한 상품의 취소 및
									환불 수수료를 공제하고 환불해 드립니다.<br /> <br /> ● 제 16조 (청약철회 등)<br /> ①
									"몰"과 상품등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날부터 7일 이내에는 청약의 철회를
									할수 있습니다. 단, 여행상품의 경우 국외,국내여행 표준약관에 의한 환급기준에 따라 별도의 취소수수료가 부가될 수
									있습니다.<br /> ② 이용자는 상품등을 배송받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할
									수 없습니다.<br /> 1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의
									내용을 확인하기 위하여 포장<br /> 등을 훼손한 경우에는 청약철회를 할 수 있습니다)<br /> 2.
									이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br /> 3. 시간의 경과에
									의하여 재판매가 곤란할 정도로 상품등의 가치가 현저히 감소한 경우<br /> 4. 같은 성능을 지닌 상품등으로
									복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br /> ③ 제2항제2호 내지 제4호의 경우에
									"몰"이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의
									조치를 하지 않았다면 이용자의 청약철회등이 제한되지 않습니다.<br /> ④ 이용자는 제1항 및 제2항의 규정에
									불구하고 상품등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 상품등을 공급받은 날부터
									3월이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.<br />
									<br /> ● 제 17조(청약철회 등의 효과)<br /> ① "몰"은 이용자로부터 재화 등을 반환받은 경우
									3영업일 이내에 이미 지급받은 상품등의 대금을 환급합니다. 이 경우 "몰"이 이용자에게 상품등의 환급을 지연한
									때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연 이자율을 곱하여 산정한 지연이자를 지급합니다.<br />
									② "몰"은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 상품등의 대금을 지급한
									때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 상품등의 대금의 청구를 정지 또는 취소하도록 요청합니다.<br />
									③ 청약철회등의 경우 공급받은 상품등의 반환에 필요한 비용은 이용자가 부담합니다. "몰"은 이용자에게 청약철회등을
									이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 상품등의 내용이 표시·광고 내용과 다르거나 계약내용과
									다르게 이행되어 청약철회등을 하는 경우 상품등의 반환에 필요한 비용은 "몰"이 부담합니다.<br /> ④
									이용자가 상품등을 제공받을때 발송비를 부담한 경우에 "몰"은 청약철회시 그 비용을 누가 부담하는지를 이용자가 알기
									쉽도록 명확하게 표시합니다.<br /> <br /> ● 제 18조(개인정보보호)<br /> 개인정보보호에
									관한 사항에 몰에 게시된 당사의 개인정보취급방침에 규정된 내용에 따릅니다.<br /> <br /> ● 제
									19조("몰"의 의무)<br /> ① "몰"은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며
									이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화,용역을 제공하는데 최선을 다하여야 합니다.<br />
									② "몰"은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안
									시스템을 갖추어야 합니다.<br /> ③ "몰"이 상품이나 용역에 대하여 「표시,광고의공정화에관한법률」 제3조
									소정의 부당한 표시 광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br /> ④
									"몰"은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.<br /> <br /> ● 제
									20조(회원의 ID 및 비밀번호에 대한 의무)<br /> ① 제17조의 경우를 제외한 ID와 비밀번호에 관한
									관리책임은 회원에게 있습니다.<br /> ② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는
									안됩니다.<br /> ③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는
									바로 "몰"에 통보하고 "몰"의 안내가 있는 경우에는 그에 따라야 합니다.<br /> <br /> ● 제
									21조(이용자의 의무)<br /> 이용자는 다음 행위를 하여서는 안됩니다.<br /> 1. 신청 또는 변경시
									허위 내용의 등록<br /> 2. 타인의 정보 도용<br /> 3. "몰"에 게시된 정보의 변경<br />
									4. "몰"이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br /> 5. "몰" 기타
									제3자의 저작권 등 지적재산권에 대한 침해<br /> 6. "몰" 기타 제3자의 명예를 손상시키거나 업무를
									방해하는 행위<br /> 7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에
									공개 또는 게시하는 행위<br /> <br /> ● 제 22조(연결"몰"과 피연결"몰" 간의 관계)<br />
									① 상위 "몰"과 하위 "몰"이 하이퍼 링크(예: 하이퍼 링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식
									등으로 연결된 경우, 전자를 연결 "몰"(웹 사이트)이라고 하고 후자를 피연결 "몰"(웹사이트)이라고 합니다.<br />
									② 연결"몰"은 피연결"몰"이 독자적으로 제공하는 상품등에 의하여 이용자와 행하는 거래에 대해서 보증책임을 지지
									안는다 는 뜻을 연결"몰"의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증책임을
									지지 않습니다.<br /> <br /> ● 제23조(저작권의 귀속 및 이용제한)<br /> ① "몰"이
									작성한 저작물에 대한 저작권 기타 지적재산권은 "몰"에 귀속합니다.<br /> ② 이용자는 "몰"을 이용함으로써
									얻은 정보 중 "몰"에게 지적재산권이 귀속된 정보를 "몰"의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타
									방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.<br /> ③ "몰"은 약정에 따라
									이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.<br /> ④ "몰"과 상품구매및
									서비스이용 계약을 체결하지 않고 이용자가 "몰"에 게시된 정보를 사용으로 인한 피해에 대한 책임은 전적으로
									이용자에게 있습니다.<br /> <br /> ● 제24조(분쟁해결)<br /> ① "몰"은 이용자가 제기하는
									정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치운영합니다.<br /> ②
									"몰"은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한
									경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br /> ③ "몰"과 이용자간에 발생한
									전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는
									분쟁조정기관의 조정에 따를 수 있습니다.<br /> <br /> ● 제25조(재판권 및 준거법)<br />
									① "몰"과 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는
									경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지
									않거나 외국거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br /> ② "몰"과 이용자간에 제기된
									전자상거래 소송에는 한국법을 적용합니다.<br /> <br /> ● 제26조(특별규정)<br /> ① 당
									약관에 명시되지 않은 사항은 전자거래기본법, 전자서명법,전자상거래등에서의 소비자보호에 관한 법률 기타 관련법령의
									규정 및 국내외 여행표준약관등에 의합니다.<br /> <br /> ● 부 칙<br /> 본 약관은 2008년
									6월 1일 부터 시행됩니다<br />
								</div> <br> <input type="radio" name="muni"> <span>이용약관에
									동의합니다.</span><input type="radio" name="muni" checked> <span>이용약관에
									동의하지 않습니다.</span><br> <br>
							</td>
						</tr>
						<tr>
							<td class="stit" colspan="2"><b>개인정보 수집동의절차</b></td>
						</tr>
						<tr>
							<td class="frm2" colspan="2">
								<div id="txt2">

									[ 개인정보 수집, 이용에 관한사항 ]<br /> <br /> 회사는 회원제 서비스 제공을 위해 귀하의
									개인정보를 아래와 같이 수집하고자 합니다.&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />
									&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br /> 1.
									수집하는개인정보항목 : 이름,아이디,비밀번호,생년월일,휴대폰번호,이메일&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;<br /> &nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;<br /> 2.수집및이용목적 : 회원제 가입 서비스제공,
									계약이행을 위한 연락, 민원 및 고충처리&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />
									&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br /> 3. 보유및 이용기간
									: 회원탈퇴 후 5일까지&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />
									&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br /> ※서비스 제공을 위해
									필요한 최소한의 개인정보이므로 동의를 해 주셔야 서비스를 이용하실 수 있습니다.&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;<br /> &nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp; &nbsp;<br /> 개인정보의 수집,이용에 관한 사항에
									동의하십니까?&nbsp;&nbsp; &nbsp;
								</div> <br> <input type="radio" name="muni2"> <span>개인정보
									수집에 동의합니다.</span><input type="radio" name="muni2" checked> <span>개인정보
									수집에 동의하지 않습니다</span><br> <br>
							</td>
						</tr>
					</table>
					<button class="btn btn-lg btn-secondary" type="submit" id="btn"
						onClick="return CheckIt_com(this.form)">가입하기</button>
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
		                   document.getElementById('zipcode').value = data.zonecode;
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
	<%@ include file="footer.jspf"%>
</body>
>>>>>>> refs/remotes/origin/master
</html>