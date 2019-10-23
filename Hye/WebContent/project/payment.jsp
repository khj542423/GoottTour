<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "결제페이지";
	String pageSideName = "여행 결제페이지";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>
	</head>
	<style>
		#pay{float:left; width:100%; margin-top:-16px;}
		#pay>div{float:left; text-align:center; width:228px; height:120px; padding:33px 0px;}
		#pay>div:nth-child(3){width:501px; padding: 43px 0px;}
		#pay>div:last-child{border-left:1px dashed gray; margin-right:0px; width:243px; background-color:#ddd;}
		#pay img{width:20px; height:20px; position:relative}
		#pay>div:first-child>img{left:75px; top:-12px}
		#pay img:last-child{left:37px; }
		
		#payFrm *{text-align:left}
		#payFrm>table tr td:nth-child(2n+1){width:15%; text-align:center}
		#payFrm>table tr td:nth-child(2n){width:35%;}
		
		.hrStyle{margin-bottom:30px; }
		
		#revData{table-layout:fixed}
		#revData tr>td{width:12%}
		#revData tr>td:nth-child(2){width:10%}
		#revData tr>td:nth-child(3){width:34%; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;}
		#revData tr>td:nth-child(6){width:6%}
	</style>
	<body>
		<%@ include file="header.jspf"%>
		<section>
			<%@ include file="sidebar.jspf"%>
			<h3>예약정보</h3>
			<hr class="hrStyle"/>
				<table id="revData" class="table table-bordered">
				  <tr>
					<td>예약날짜</td> 
					<td>상품코드</td>
					<td>상품명</td>
				    <td>출발일</td>
				 	<td>도착일</td>
				    <td>인원</td>
				    <td>결제금액</td>
				  </tr>
				  <tr>
				    <td>2019년9월19일</td>
				    <td><a href='#'>AAP3412TWB</a></td>
				    <td>제주도 5일_특급 신라호텔 바로출발,제주도 5일_특급 신라호텔 바로출발</td>
				    <td>2019년10월20일</td>
				    <td>2019년10월22일</td>
				    <td>2</td>
				    <td>500,000</td>
				  </tr>
				</table>
			<h3>결제정보</h3>
			<hr class="hrStyle"/>
			<div>
			<h5>환불 수수료</h5>
			<h6 style="color:red">(영업시간 외에는 당일 환불이 불가하며, 환불수수료가 발생되오니 참고하여 주시기 바랍니다. 출발 당일에는 취소할 수 없습니다.)</h6>
				<table class="table table-bordered">
					<tr>
						<td>취소시기</td>
						<td>출발 10일 전</td>
						<td>출발 7일 전</td>
						<td>출발 3일 전</td>
						<td>출발 1일 전</td>
					</tr>
					<tr>
						<td>환불수수료</td>
						<td>요금의 20%</td>
						<td>요금의 30%</td>
						<td>요금의 40%</td>
						<td>요금의 50%</td>
					</tr>
				</table>
			</div>
			<div id="pay">
				<div><span>총요금</span><br/><span>123,000원</span><img src="../image/icon_minus.png"/></div>
				<div><span>할인금액</span><br/><span>0원</span></div>
				<div><select style="width:400px; margin-left:30px"><option>사용가능한 쿠폰이 없습니다.</option></select><img src="../image/icon_equals.png"/></div>
				<div><span>최종결제금액</span><br/><span>123,000원</span></div>
			</div>
			<form id="payFrm">
				<table class="table table-bordered">
					<tr>
						<td>카드구분</td>
						<td><input type="radio" checked/>개인 <input type="radio" checked/>법인</td>
						<td>카드종류</td>
						<td><select><option>카드종류</option></select></td>
					</tr>
					<tr>
						<td>카드번호</td>
						<td><input type="text" size="3">
						- <input type="text" size="3">
						- <input type="text" size="3">
						- <input type="text" size="3">
						</td>
						<td>유효기간</td>
						<td>
							<select><option>년</option></select>
							<select><option>월</option></select>
						</td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text"/></td>
						<td>생년월일</td>
						<td>
							<select><option>년</option></select>
							<select><option>월</option></select>
							<select><option>일</option></select>
						</td>
					</tr>
					<tr>
						<td>카드비밀번호</td>
						<td><input type="text" placeholder="앞2자" style="width:50px"/>**</td>
						<td>CSV</td>
						<td><input type="text"/></td>
					</tr>
				</table>
				<input type="checkbox"/>결제 동의합니다.<hr/>
				<input type="button" class="btn btn-secondary" value="결제 완료하기"/>
			</form>
		</section>
		<%@ include file="footer.jspf"%>
	</body>
</html>