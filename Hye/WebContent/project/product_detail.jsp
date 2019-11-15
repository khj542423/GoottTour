<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pageName = "상세 리스트";
	String pageSideName = "구트투어 여행";
	String pageImage = "mainimg4.jpg";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="headerFooterStyle.css" type="text/css"/>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="product_detail.css" type="text/css"/>
<title>상품 상세 페이지</title>
</head>


<body>
<%@ include file="header.jspf"%>

<div class="container">
		<div id="detail-content"> 	
			<div class="page_location">
				<a href="<%=request.getContextPath()%>/index.jsp">홈></a><a href="#">1박2일</a>
			</div>
			<div class="sec_div">
				<div class="gall_big">
					<div class="w3-content w3-section" style="max-width:500px">
					  <img class="mySlides w3-animate-fading" src="<%=request.getContextPath()%>/image/mainimg1.jpg" style="width:100%">
					  <img class="mySlides w3-animate-fading" src="<%=request.getContextPath()%>/image/mainimg2.jpg" style="width:100%">
					  <img class="mySlides w3-animate-fading" src="<%=request.getContextPath()%>/image/mainimg3.jpg" style="width:100%">
					  <img class="mySlides w3-animate-fading" src="<%=request.getContextPath()%>/image/mainimg4.jpg" style="width:100%">
					</div>
				</div>
				<div class="title_text" style="text-align: left">
					<div class="circle_heart"><a href="">&#9825;</a></div>
					<div class="title_name"><h1 style="text-align: left; padding-right: 40px; font-size:30px; font-weight: 600;">남쪽 나라의 명소! 남해+여수+순천 (1박2일)</h1></div>
					<div class='code' style="text-align: left"> ( 상품코드: AAPP33 )</div>
					<div class="product_list">
						<ul class="product_menu">
							<li><span>출발일자</span>2019.11.29일</li>
							<li><span>상품가격</span>200,000,000원</li>
							<li><span>여행지역</span>경주</li>
							<li><span>여행기간</span>2019.11.29~2019.11.30</li>
						</ul>
					</div>
					<div class="btn_menu">
						<button class="btn-1" >장바구니</button>
						<button class="btn-2" >예약하기</button>
					</div>
				</div>
			</div>
		</div>

	<div class="tb_alldiv">
		<table class="table_01">
		    <tr>
		        <th class="tb1" scope="row">일정</th>
		        <td><span>1박 2일 </span> <span><button class="btn-3">다르 출발일 보기</button></span>
		        <br>
		        <ul>
		        	<li>11월 19일 (화) 00:00 남쪽나라 출발 - 11월 19일 (화) 00:00 도착</li>
		        	<li>11월 20일 (수) 00:00 KTX 출발 - 11월 20일 (수) 00:00 도착</li>
		        </ul>
		        </td>
		    </tr>
		    <tr>
		        <th class="tb2" scope="row">방문도시</th>
		        <td>포항, 울산, 경주</td>
		    </tr>
		    <tr>
		        <th class="tb3" scope="row">예약인원</th>
		        <td>현재 8명 (여유 좌석 0 / 최소 출발 인원 4명)</td>
		    </tr>
		</table>
	</div>
	
	<div class="tb_alldiv2">
		<h3 style="text-align:left; font-weight: 600;">상품 체크 포인트</h3> 
				<table class="table_02">
		    <tr>
		        <th scope="row">(아이콘)<br>보험</th>
		        <td class="row1">
		        	<ul>
		        		<li>[여행자보험] 미가입</li>
		        		<li>[영업보증보험] 가입</li>
		        		<li>[기획여행 보증보험] 가입</li>
		        	</ul>
			    </td>
		    </tr>
		    <tr>
		        <th scope="row">(아이콘)<br>인솔자</th>
		        <td class="row2">[인솔자] 0명이 넘으면 인솔자가 배정될 예정입니다.</td>
		    </tr>
		    <tr>
		        <th scope="row">(아이콘)<br>투어마일리지</th>
		        <td class="row3">
					<ul>
						<li>여행자 성인1인 기준 2,570 마일 적립 예정<br>
						(모두멤버스회원 한정, 출발 전 여행자 개별 가입 필수, 출발일 + 10일 후 적립)</li>
						<li>예상 적립 마일리지 금액은 프로모션 적용 및 결제방법에 따라 변동될 수 있음</li>
						<li>투어마일리지 제휴카드 : 1,000원당 최대 30마일 추가 적립 예정</li>
					</ul>
						
				</td>
		    </tr>
		</table>
	</div>
	
	<div> 
		
	
	</div>
	
</div>

	<script>
		var myIndex = 0;
		carousel();
		
		function carousel() {
		  var i;
		  var x = document.getElementsByClassName("mySlides");
		  
		  for (i = 0; i < x.length; i++) {
		    x[i].style.display = "none";  
		  }
		  myIndex++;
		  if (myIndex > x.length) {myIndex = 1}    
		  x[myIndex-1].style.display = "block";  
		  setTimeout(carousel, 9000);    
		}
	</script>
<%@ include file="footer.jspf"%>
</body>
</html>